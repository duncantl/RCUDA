library(RCUDA)
if(FALSE) {
prop = new_cudaDeviceProp()
rm(prop)
gc() ; gc()

prop = new_cudaDeviceProp(.finalizer = FALSE)
rm(prop)
gc(); gc()


free(prop) # need method for this
}
