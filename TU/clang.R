library(RCIndex)

invisible(sapply(list.files("~/GitWorkingArea/RClangSimple/inst/generateCode/", pattern = "R$", full = TRUE), source)); source("nativeGen.R")

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

fn = sapply(ds, function(x) getFileName(x$def))
ds.cu = ds[grepl(incs, fn)]


###################################################################################################
#
# Context routines
ctx = grep("^cuCtx", names(r.cu), value = TRUE)
# deprecated ones are cuCtxAttach and cuCtxDetach.
ctx = setdiff(ctx, c("cuCtxAttach", "cuCtxDetach"))
# What about cuDeviceCanAccessPeer - not a context thing, in cuDevice

generateCode(r.cu[ctx], "Device")

################

dev = grep("^cuDevice", names(r.cu), value = TRUE)
# Ignore GetName for now.
dev = setdiff(dev, c("cuDeviceGetName", "cuDeviceComputeCapability", "cuDeviceGetProperties", "cuDeviceGetByPCIBusId", "cuDeviceGetPCIBusId"))

generateCode(r.cu[dev], "Device")

######

mod = grep("^cuModule", names(r.cu), value = TRUE)
mod = setdiff(mod, c("cuModuleLoadDataEx"))
#cuda.createNativeProxy(r.cu$cuModuleLoad)

generateCode(r.cu[mod], "Module")


#######
func = grep("^cuFunc", names(r.cu), value = TRUE)
generateCode(r.cu[func], "Function")

########

ev = grep("^cuEvent", names(r.cu), value = TRUE)
generateCode(r.cu[ev], "Event")

#########

ev = grep("^cuStream", names(r.cu), value = TRUE)
generateCode(r.cu[ev], "Stream")


############

mem = grep("^cuMem", names(r.cu), value = TRUE)
lapply(r.cu[mem], cuda.createNativeProxy)

# [Done] event, stream, 
# memory - richer types e.g. array,...
# texture, surface
