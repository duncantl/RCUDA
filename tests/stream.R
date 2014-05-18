library(RCUDA)

# Flag must be 0L
cuGetContext()
stream = cuStreamCreate(0)
cuStreamGetFlags(stream)
cuStreamGetPriority(stream)
cuStreamQuery(stream)
cuStreamSynchronize(stream)
cuStreamDestroy(stream)

stream = cuStreamCreateWithPriority(0, -1)
cuStreamGetFlags(stream)
cuStreamGetPriority(stream) # still 0! XXX
cuStreamQuery(stream)
cuStreamDestroy(stream)


