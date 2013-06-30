library(RCIndex)
source("nvvm.R")

tu = createTU("/usr/local/cuda/nvvm/include/nvvm.h")

r = getRoutines(tu)

ds = getDataStructures(tu)
nds = ds[grepl("nvvm.h", sapply(ds, function(x) getFileName(x$def)))]

e = getEnums(tu)

#
#
#
# With just cuda.createNativeProxy(), problems with:
#  DestroyProgram
#  CompileProgram & VerifyProgram  (options not an argument)
#  GetCompiledResult & GetProgramLog - don't pass buffer.
# So we determine the in and out parameters from the documentation and use our own function
# to wrap cuda.createNativeProxy(). Can determine the in out parameters from the text

# [Done] Put names on the list() when returning more than one value by a parameter.
#
# generate documentation
#
# Should we be dealing with nvvmProgram objects directly or with an additional * in the C code.??
#   Things are fine as they are with a local version of GET_REF.
# ** BUT  destoryProgram() needs to change. It should get a regular nvvmProgram object and pass a reference to it.
#
# finalizer for nvvmProgram - set in createProgram.
#
# [Done] GetCompiledResult and GetProgramLog  - do these manually?
#
# [Done] change the name of R_cudaErrorInfo() - define our own version of checkStatusCode() (see below)
#
# [Done] change the names of the R functions to remove the nvvm prefix.
#
# [Done] AddModuleToProgram - set size's default value to nchar(buffer).
#           also allow buffer to be  a file
#
# [Done] CompileProgram - change order of arguments and 
#
# [Done] enums (just nvvmResult)
#
#

rcode = lapply(r, nvvm.createRProxy)
rcode = rcode[ !sapply(rcode, is.null) ]

e = new.env()
invisible(lapply(rcode, function(x) eval(parse(text = as(x, "character")), e)))

f = e$addModuleToProgram
formals(f) = formals(f)[c("prog", "buffer", "name", "size")]
formals(f)[["name"]] = ""
formals(f)[["size"]] = quote(nchar(buffer))

body(f)[3:(length(body(f)) + 1L)] = body(f)[2:length(body(f))]
body(f)[[2]] = quote(buffer <- paste(buffer, collapse = "\n"))

e$addModuleToProgram = f

ids = c("compileProgram", "verifyProgram")
invisible(lapply(ids, function(id) {
          f =  get(id, e)
          formals(f) = formals(f)[c("prog", "options", "numOptions")]
          formals(f)[["numOptions"]] = quote(length(as(options, "character")))
          assign(id, f, e)
       }))


sink("../../Rnvvm/R/nvvm.R")
invisible(sapply(ls(e), function(id) {
                         cat(id, "<-\n")
                         dput(get(id, e))
                        }))
sink()

# for namespace file
fnNames = names(e)



ncode = lapply(r, nvvm.createNativeProxy)
ncode = ncode[ !sapply(ncode, is.null) ]
cat(c('#include "Rnvvm.h"\n', sapply(ncode, as, "character")), file = "../../Rnvvm/src/nvvm.c", sep = "\n")


cat(c('#include "Rnvvm.h"', makeEnumDef(e$nvvmResult)), file = "../../Rnvvm/src/nvvmResult.c", sep = "\n")
#  Add the declaration manually to Rnvvm.h


cat(makeEnumClass(e$nvvmResult), file = "../../Rnvvm/R/nvvmResult.R", sep = "\n")

