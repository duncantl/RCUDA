library(RGCCTranslationUnit)
tu = parseTU("tu.c.001t.tu")

file_p = function(src, files, allowBuiltIns = FALSE) grepl("^cu", src)
r =  getRoutines(tu, checkSourceFile = file_p)
rr = lapply(r, resolveType, tu)


enums = getEnumerations(tu)
r.enums =lapply(enums, resolveType, tu)

gvars = getGlobalVariables(tu)
names(gvars)

save(rr, r.enums, file = "tuInfo.rda")

