library(RCUDA)

ctx = createContext()

cuCtxGetCurrent()
cuCtxGetDevice()

cuCtxSynchronize()

cuCtxGetApiVersion(ctx)

cuCtxGetCacheConfig()
cuCtxGetSharedMemConfig()

# This doesn't work on my machine, giving
#  CUDA_ERROR_UNSUPPORTED_LIMIT
# errors
tryCatch(sapply(CUlimitValues, cuCtxGetLimit))

old = cuCtxPopCurrent()
identical(old, ctx)

cuGetContext(FALSE)  # should be 0x0

cuCtxPushCurrent(old)
cuCtxGetCurrent()


 # SetCacheConfig may not actualy take. Apparently it can ignore us.
cuCtxSetCacheConfig(RCUDA:::CU_FUNC_CACHE_PREFER_SHARED)
cuCtxGetCacheConfig()


cuCtxSetLimit(RCUDA:::CU_LIMIT_DEV_RUNTIME_SYNC_DEPTH, 1.406987e+10)
class(tryCatch(cuCtxSetLimit(RCUDA:::CU_LIMIT_DEV_RUNTIME_SYNC_DEPTH, 1.406987e+10), error = function(e) e))


