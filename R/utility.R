
"compute_grid" <- function(N,threads_per_block=512L)
{ 
    # if...
    # N = 1,000,000
    # => 1954 blocks of 512 threads will suffice
    # => (62 x 32) grid, (512 x 1 x 1) blocks
    # Fix block dims:
    block_dims <- c(threads_per_block, 1L, 1L)
    grid_d1 <- floor(sqrt(N/threads_per_block))
    grid_d2 <- ceiling(N/(grid_d1*threads_per_block))
    grid_dims <- c(grid_d1, grid_d2, 1L)
    return(list("grid_dims"=grid_dims,"block_dims"=block_dims))
}

