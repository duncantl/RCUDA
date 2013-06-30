source("R/nvcc.R")
txt = system(paste(nvccCmd, "--help"), intern = TRUE)

i = grep("^--", txt)

args = txt[i]

alt = gsub(".*\\(([^)]+)\\)[[:space:]]*", "\\1", args)

i = grepl(".*(\\([^)]+\\))[[:space:]]*", args)

args = sapply(strsplit(args, " "), `[`, 1)
names(args)[i] = alt[i]

