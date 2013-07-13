library(RCUDA)


ev = cuEventCreate(0)
cuEventQuery(ev)

stream = cuStreamCreate(0)

cuEventRecord(ev, stream)

cuEventSynchronize(ev)

cuStreamWaitEvent(stream, ev, 0)

cuEventDestroy(ev)


################################################

