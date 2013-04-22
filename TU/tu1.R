library(RGCCTranslationUnit)
tu = parseTU("tu.c.001t.tu")

  # need to handle case where src is empty character vector.
filep = function(src, files, ...) { if(length(src) == 0) TRUE else grepl("^cu", src)}

ds = getDataStructures(tu, filep)
ds = resolveType(ds, tu)

dc = DefinitionContainer(tu)
ss = generateStructInterface(ds[['cudaDeviceProp']], dc)
ss$cRoutines[["cudaDevicePropPtr_set_totalGlobalMem"]]
a = writeCode(ss, "native", "../src/cudaDeviceProp.c", includes = '"RCUDA.h"')
a = writeCode(ss, "r", "../R/cudaDeviceProp.R")
  # need to append to declarations.h, so open it as a connection.
a = writeCode(ss, "header", file = "../src/declarations.h")


a = generateStructInterface(ds[["cudaChannelFormatDesc"]], dc)
b = generateStructInterface(ds[["cudaMemcpy3DParms"]], dc)



r = getRoutines(tu, checkSourceFile = filep)
rr = resolveType(r, tu)

cuda = rr[grep("^cublas", names(rr), invert = TRUE)]
# 309 routines.

f = createRoutineBinding(cuda[["cudaGetDeviceProperties"]], addDot = TRUE)
g = writeCode(f, "native", file = "../src/getDevProps.c", includes = '"RCUDA.h"')
g = writeCode(f, "r", file = "../R/getDevProps.R")


classes = getClasses(tu)

 # Get the argument types
argTypes = lapply(cuda, function(x) sapply(x$parameters, function(x) class(x$type)))

table(sapply(argTypes, length))

# the ones that take no arguments are
names(cuda)[(sapply(argTypes, length)) == 0]


createRoutineBinding(cuda[["cudaDeviceReset"]])

enums = getEnumerations(tu)
enums = enums[ !(names(enums) %in% "idtype_t") ]
r.enums = resolveType(enums, tu)



e = writeCode(r.enums, "native", file = "../src/enumConverters.c", includes = '"RCUDA.h"')
e = writeCode(r.enums, "r", file = "../R/enumDefs.R")
e = writeCode(r.enums, "header", file = "../src/enumDecls.h", includes = '"RCUDA.h"')
#con = file("../src/enumDecls.h", "w")
#invisible(lapply(r.enums, writeCode, "header", con))

