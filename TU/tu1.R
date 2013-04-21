library(RGCCTranslationUnit)
tu = parseTU("tu.c.001t.tu")

ds = getDataStructures(tu)
ds = resolveType(ds, tu)

dc = DefinitionContainer(tu)
ss = generateStructInterface(ds[['cudaDeviceProp']], dc)
ss$cRoutines[["cudaDevicePropPtr_set_totalGlobalMem"]]
writeCode(ss, "native", "../src/cudaDeviceProp.c", includes = '"RCUDA.h"')
writeCode(ss, "r", "../R/cudaDeviceProp.R")


writeCode(ss, "header", file = "../src/declarations.h")

filep = function(src, files, ...) grepl("^cu", src)
r = getRoutines(tu, checkSourceFile = filep)
rr = resolveType(r, tu)

cuda = rr[grep("^cublas", names(rr), invert = TRUE)]
# 309 routines.

f = createRoutineBinding(cuda[["cudaGetDeviceProperties"]], addDot = TRUE)
writeCode(f, "native", file = "../src/getDevProps.c", includes = '"RCUDA.h"')
writeCode(f, "r", file = "../R/getDevProps.R")

if(FALSE) {

classes = getClasses(tu)

 # Get the argument types
argTypes = lapply(cuda, function(x) sapply(x$parameters, function(x) class(x$type)))

table(sapply(argTypes, length))

# the ones that take no arguments are
names(cuda)[(sapply(argTypes, length)) == 0]


RGCCTranslationUnit:::createMethodBinding(cuda[["cudaDeviceReset"]])

enums = getEnumerations(tu)
r.enums = resolveType(enums, tu)

}
