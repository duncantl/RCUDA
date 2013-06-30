getGridSize = 
function(N, perBlock = getDeviceProperties(1L)@maxThreadsPerBlock)
{
  gr = ceiling(N/prod(perBlock))
  tmp = 2^ceiling(log(gr, 2))
  
  list(grid = tmp, block = perBlock)
}