library(RCIndex)

#Identify routines that are deprecated

incs = "/usr/local/cuda/include"
tu = createTU("tu.c", includes = incs)

  # Should filter by name here, not below
r = getRoutines(tu)

fn = sapply(r, function(x) getFileName(x$def))

r.cu = r[grepl(incs, fn)]

names(r.cu)[!grepl("^cu", names(r.cu))]
# All are make_...  54 of them.

# Find all routines that return either cudaError_t
status = sapply(r.cu, function(x) getName(x$returnType) %in% c("CUresult", "cudaError_t", "enum cudaError"))
table(status)

names(r.cu)[status]



ds = getDataStructures(tu)
