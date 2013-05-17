library(RCUDA)
ctx = cuGetContext()

d = seq(1.5, length = 4, by = 3)
dp = copyToDevice(d)
dp[]

dp[] = c(2, 3)
dp[]


dp[] = 1:2
dp[]

dp[ c(1, 3) ]

dp[ c(FALSE, FALSE, TRUE, TRUE) ]

###############

i = 1:10
ip = copyToDevice(i)
ip[]

ip[] = c(2L, 3L)
ip[]

ip[] = c(2, 3)
ip[]

ip[1:3]
ip[6:8]

ip[ rep(c( TRUE, FALSE), 5) ]




