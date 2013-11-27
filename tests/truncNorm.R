# Importance sampling
# See, e.g., www.hss.caltech.edu/~mshum/gradio/simulation.pdf‎
library(RCUDA)
N = 1e6

pnorm(1) - pnorm(0)

accRej =
function(N, accRate = .8)
{
  ans = numeric(N)
  num = 0
  
  while(TRUE) {
     tmp = rnorm(N/accRate)
     w = tmp >=0 & tmp <= 1
     if(any(w)) {
       ans[ (num + 1): (num + sum(w)) ] = tmp[w]
     }
    num = num + sum(w)
    if(num >= N)
      break
  }
  invisible(ans[1:N])
}


imp =
function(N, g = function(x) x)
{
  x = runif(N)
  d = dnorm(x, 0, 1)
  w = d/(pnorm(1) - pnorm(0))
  g(x) * w
#  sum(x * d)/sum(d)
}

if(FALSE) {
sa = accRej(N)
mean(sa^2)
mean(imp(N, function(x) x^2))


mean(log(sa))
mean(imp(N, log))
}

if(FALSE) {
library(RCUDA)
mod = loadModule("importanceSampling.ptx")
u = runif(N)
dims = getGridSize(N)
z = .gpu(mod$truncNorm, numeric(N), u, as.integer(N), gridDim = dims$grid, blockDim = dims$block, outputs = 1L)
mean(z)

z = .gpu(mod$log_truncNorm, numeric(N), u, as.integer(N), gridDim = c(64, 32), blockDim = 512,outputs = 1L)
mean(z)
}



# Timings
if(FALSE) {
dims = getGridSize(N)
itm = replicate(10, system.time({z = imp(N)}))
gtm = replicate(10, system.time({u = runif(N); z = .gpu(mod$truncNorm, numeric(N), u, as.integer(N), gridDim = dims$grid, blockDim = dims$block, outputs = 1L)}))

props = getDeviceProperties(1L)
ids = sprintf("%stm.N%s.%s", c("i", "g"), formatC(N), gsub(" ", "", props@name))
invisible(mapply(assign, ids, list(itm, gtm), MoreArgs = list(envir = globalenv())))

filename = sprintf("times.N%s.%s.rda", formatC(N), gsub(" ", "", props@name))
save(list = ids, file = filename)

rowMeans(gtm)[1:3]/rowMeans(itm)[1:3]
}
