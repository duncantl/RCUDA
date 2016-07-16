# Get the options for the nvcc command/executable.

# Get the full path to the nvcc command
source("R/nvcc.R")

# invoke nvcc and get its help
txt = system(paste(nvccCmd, "--help"), intern = TRUE)

# now find the command line arguments
i = grep("^--", txt)

args = txt[i]

alt = gsub(".*\\(([^)]+)\\)[[:space:]]*", "\\1", args)

i = grepl(".*(\\([^)]+\\))[[:space:]]*", args)

args = sapply(strsplit(args, " "), `[`, 1)
names(args)[i] = alt[i]

