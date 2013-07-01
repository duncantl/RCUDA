library(RCUDA)
source("determineGridSize.R")
props = getDeviceProperties(1L)

m = loadModule("dnorm.ptx")
k = m$dnorm_kernel

mu = 0
sigma = 1

B = 10
R = 100
N = c(1e6, 1e7)
tm = lapply(N,
       function(N) {
         x = rnorm(N)
	 dims = getGridSize(N)
         gtm = replicate(B, system.time({ 
                             replicate(R, .cuda(k, x, N, mu, sigma, gridDim = dims$grid, blockDim = dims$block, outputs = 1L))
                            }))
         rtm = replicate(B, system.time({ 
                              replicate(R, dnorm(x, mu, sigma))
                            }))

         data.frame(times = c(gtm, rtm), where = rep(c("GPU", "R"), each = B), N = rep(N, 2*B), GPU = rep(props@name, 2*B))
       })


tm = do.call(rbind, tm)
by(tm, list(tm$N, tm$GPU), function(x) tapply(x$times, x$where, median))

tm.Quadro600 = tm
save(tm.Quadro600, file = "tm.Quadro600.rda")
