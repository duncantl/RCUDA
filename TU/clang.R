library(RCIndex)

incs = "/usr/local/cuda/include"
tu = createTU("tu.c", includes = incs)

  # Should filter by name here, not below
r = getRoutines(tu)

fn = sapply(r, function(x) getFileName(x$def))

r.cu = r[grepl(incs, fn)]

names(r.cu)[!grepl("^cu", names(r.cu))]
# All are make_...

ds = getDataStructures(tu)
