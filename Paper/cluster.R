library(RCUDA)
mod = loadModule("distance_gputools.ptx")
clusterMod = loadModule("cluster.ptx")

N = c(A = 1e4L, B = 4999L)
p = 200L
A = matrix(rnorm(N["A"]*p), N["A"], p)
B = matrix(rnorm(N["B"]*p), N["B"], p)


# make space on the GPU to store the distances
distances = cudaMalloc(nrow(A) * nrow(B), , "float")

c("hcluster_count_d",  "hcluster_min_val_d", "hcluster_min_col_d", 
  "hcluster_sub_d", "hcluster_sup_d", "hcluster_merge_val_d")

AB = rbind(A, B)

out = .gpu(mod$euclidean_kernel_same,
           t(AB), ncol(AB), nrow(AB),
           NULL, 0L, 0L, 
           ncol(AB), ans = numeric(nrow(AB)^2), nrow(AB), 2.0,
           outputs = NULL, gridDim = c(nrow(AB), nrow(AB)), blockDim = 32L)

.gpu(clusterMod$convert_kernel, distances, nrow(AB), nrow(AB))



# Use streams
# Create a stream, call .gpu(euclidean_kernel, ..., .async = TRUE, stream = stream)

if(FALSE) {
stream = cudaStreamCreate()
.gpu(mod$euclidean_kernel, t(A), ncol(A), nrow(A), 
        t(B), ncol(A), nrow(B), 
        ncol(A), distances, nrow(A), 2.0,
        outputs = NULL, gridDim = c(nrow(A), nrow(B)), blockDim = 32L,
        stream = stream)

# now add call to hclust
}