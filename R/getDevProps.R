.cudaGetDeviceProperties <-
function( arg1 , arg2 , .copy = TRUE )
{
     arg1 = asReference( arg1 ,  "cudaDevicePropPtr" )
     arg2 = as( arg2 , 'integer')
    .copy = validateCopy(.copy, c('arg1'))

    .Call('R_cudaGetDeviceProperties', arg1, arg2, .copy , as.integer(sum(!is.na(.copy)) + 1 ))
} 
