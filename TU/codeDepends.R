# This shows how to use the CodeDepends package when we are working
# on parts of the script in tu1.R.
# sourceVariable() determines the dependencies and only evaluates the necessary code.

library(CodeDepends)
sc = readScript("tu1.R")
sourceVariable("e", sc, verbose = TRUE)

#inp = getInputs(sc)

