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


########
#
# Context routines
ctx = grep("^cuCtx", names(r.cu), value = TRUE)

# Get rid of the _v2
# deprecated ones are cuCtxAttach and cuCtxDetach.
ctx = setdiff(ctx, c("cuCtxAttach", "cuCtxDetach"))
# What about cuDeviceCanAccessPeer - not a context thing
#

ctx.Ccode = lapply(r.cu[ctx], cuda.createNativeProxy)
ctx.Rcode = lapply(r.cu[ctx], cuda.createRProxy)

writeCode(ctx.Ccode, "../src/context.c")
writeCode(ctx.Rcode, "../R/context.R")


cat("export(", paste(sapply(ctx.Rcode, slot, "name"), collapse = ",\n"), ")", sep = "\n")



################

dev = grep("^cuDevice", names(r.cu), value = TRUE)
# Ignore GetName for now.
dev = setdiff(dev, c("cuDeviceGetName", "cuDeviceComputeCapability", "cuDeviceGetProperties", "cuDeviceGetByPCIBusId", "cuDeviceGetPCIBusId"))

dev.Ccode = lapply(r.cu[dev], cuda.createNativeProxy)
dev.Rcode = lapply(r.cu[dev], cuda.createRProxy)

writeCode(dev.Ccode, "../src/autoDevice.c")
writeCode(dev.Rcode, "../R/autoDevice.R")

cat("export(", paste(sapply(dev.Rcode, slot, "name"), collapse = ",\n"), ")", sep = "\n")


######

mod = grep("^cuModule", names(r.cu), value = TRUE)
mod = setdiff(mod, c("cuModuleLoadDataEx"))
cuda.createNativeProxy(r.cu$cuModuleLoad)

generateCode(r.cu[mod], "Module")


#######

func = grep("^cuFunc", names(r.cu), value = TRUE)
generateCode(r.cu[func], "Function")

#

ev = grep("^cuEvent", names(r.cu), value = TRUE)
generateCode(r.cu[ev], "Event")







# memory, event, stream, 
