
#### <Start of definition>

setClass('cudaDevicePropPtr', contains = 'RC++StructReference', prototype = list(classes = 'cudaDevicePropPtr'))

setClass('cudaDeviceProp', representation(
   'name' = 'character',
  'totalGlobalMem' = 'numeric',
  'sharedMemPerBlock' = 'numeric',
  'regsPerBlock' = 'integer',
  'warpSize' = 'integer',
  'memPitch' = 'numeric',
  'maxThreadsPerBlock' = 'integer',
  'maxThreadsDim' = 'integer',
  'maxGridSize' = 'integer',
  'clockRate' = 'integer',
  'totalConstMem' = 'numeric',
  'major' = 'integer',
  'minor' = 'integer',
  'textureAlignment' = 'numeric',
  'texturePitchAlignment' = 'numeric',
  'deviceOverlap' = 'integer',
  'multiProcessorCount' = 'integer',
  'kernelExecTimeoutEnabled' = 'integer',
  'integrated' = 'integer',
  'canMapHostMemory' = 'integer',
  'computeMode' = 'integer',
  'maxTexture1D' = 'integer',
  'maxTexture1DMipmap' = 'integer',
  'maxTexture1DLinear' = 'integer',
  'maxTexture2D' = 'integer',
  'maxTexture2DMipmap' = 'integer',
  'maxTexture2DLinear' = 'integer',
  'maxTexture2DGather' = 'integer',
  'maxTexture3D' = 'integer',
  'maxTextureCubemap' = 'integer',
  'maxTexture1DLayered' = 'integer',
  'maxTexture2DLayered' = 'integer',
  'maxTextureCubemapLayered' = 'integer',
  'maxSurface1D' = 'integer',
  'maxSurface2D' = 'integer',
  'maxSurface3D' = 'integer',
  'maxSurface1DLayered' = 'integer',
  'maxSurface2DLayered' = 'integer',
  'maxSurfaceCubemap' = 'integer',
  'maxSurfaceCubemapLayered' = 'integer',
  'surfaceAlignment' = 'numeric',
  'concurrentKernels' = 'integer',
  'ECCEnabled' = 'integer',
  'pciBusID' = 'integer',
  'pciDeviceID' = 'integer',
  'pciDomainID' = 'integer',
  'tccDriver' = 'integer',
  'asyncEngineCount' = 'integer',
  'unifiedAddressing' = 'integer',
  'memoryClockRate' = 'integer',
  'memoryBusWidth' = 'integer',
  'l2CacheSize' = 'integer',
  'maxThreadsPerMultiProcessor' = 'integer' ), contains = 'CStruct')


setMethod( 'names' , c( 'cudaDevicePropPtr' ),       
function( x  )
{
    c(
         'name',
     'totalGlobalMem',
     'sharedMemPerBlock',
     'regsPerBlock',
     'warpSize',
     'memPitch',
     'maxThreadsPerBlock',
     'maxThreadsDim',
     'maxGridSize',
     'clockRate',
     'totalConstMem',
     'major',
     'minor',
     'textureAlignment',
     'texturePitchAlignment',
     'deviceOverlap',
     'multiProcessorCount',
     'kernelExecTimeoutEnabled',
     'integrated',
     'canMapHostMemory',
     'computeMode',
     'maxTexture1D',
     'maxTexture1DMipmap',
     'maxTexture1DLinear',
     'maxTexture2D',
     'maxTexture2DMipmap',
     'maxTexture2DLinear',
     'maxTexture2DGather',
     'maxTexture3D',
     'maxTextureCubemap',
     'maxTexture1DLayered',
     'maxTexture2DLayered',
     'maxTextureCubemapLayered',
     'maxSurface1D',
     'maxSurface2D',
     'maxSurface3D',
     'maxSurface1DLayered',
     'maxSurface2DLayered',
     'maxSurfaceCubemap',
     'maxSurfaceCubemapLayered',
     'surfaceAlignment',
     'concurrentKernels',
     'ECCEnabled',
     'pciBusID',
     'pciDeviceID',
     'pciDomainID',
     'tccDriver',
     'asyncEngineCount',
     'unifiedAddressing',
     'memoryClockRate',
     'memoryBusWidth',
     'l2CacheSize',
     'maxThreadsPerMultiProcessor'
    )
} )
 
setMethod( '$' , c( 'cudaDevicePropPtr' ),       
function( x , name  )
{
    .fieldFuns = c( 'name' = cudaDevicePropPtr_get_name,
		'totalGlobalMem' = cudaDevicePropPtr_get_totalGlobalMem,
		'sharedMemPerBlock' = cudaDevicePropPtr_get_sharedMemPerBlock,
		'regsPerBlock' = cudaDevicePropPtr_get_regsPerBlock,
		'warpSize' = cudaDevicePropPtr_get_warpSize,
		'memPitch' = cudaDevicePropPtr_get_memPitch,
		'maxThreadsPerBlock' = cudaDevicePropPtr_get_maxThreadsPerBlock,
		'maxThreadsDim' = cudaDevicePropPtr_get_maxThreadsDim,
		'maxGridSize' = cudaDevicePropPtr_get_maxGridSize,
		'clockRate' = cudaDevicePropPtr_get_clockRate,
		'totalConstMem' = cudaDevicePropPtr_get_totalConstMem,
		'major' = cudaDevicePropPtr_get_major,
		'minor' = cudaDevicePropPtr_get_minor,
		'textureAlignment' = cudaDevicePropPtr_get_textureAlignment,
		'texturePitchAlignment' = cudaDevicePropPtr_get_texturePitchAlignment,
		'deviceOverlap' = cudaDevicePropPtr_get_deviceOverlap,
		'multiProcessorCount' = cudaDevicePropPtr_get_multiProcessorCount,
		'kernelExecTimeoutEnabled' = cudaDevicePropPtr_get_kernelExecTimeoutEnabled,
		'integrated' = cudaDevicePropPtr_get_integrated,
		'canMapHostMemory' = cudaDevicePropPtr_get_canMapHostMemory,
		'computeMode' = cudaDevicePropPtr_get_computeMode,
		'maxTexture1D' = cudaDevicePropPtr_get_maxTexture1D,
		'maxTexture1DMipmap' = cudaDevicePropPtr_get_maxTexture1DMipmap,
		'maxTexture1DLinear' = cudaDevicePropPtr_get_maxTexture1DLinear,
		'maxTexture2D' = cudaDevicePropPtr_get_maxTexture2D,
		'maxTexture2DMipmap' = cudaDevicePropPtr_get_maxTexture2DMipmap,
		'maxTexture2DLinear' = cudaDevicePropPtr_get_maxTexture2DLinear,
		'maxTexture2DGather' = cudaDevicePropPtr_get_maxTexture2DGather,
		'maxTexture3D' = cudaDevicePropPtr_get_maxTexture3D,
		'maxTextureCubemap' = cudaDevicePropPtr_get_maxTextureCubemap,
		'maxTexture1DLayered' = cudaDevicePropPtr_get_maxTexture1DLayered,
		'maxTexture2DLayered' = cudaDevicePropPtr_get_maxTexture2DLayered,
		'maxTextureCubemapLayered' = cudaDevicePropPtr_get_maxTextureCubemapLayered,
		'maxSurface1D' = cudaDevicePropPtr_get_maxSurface1D,
		'maxSurface2D' = cudaDevicePropPtr_get_maxSurface2D,
		'maxSurface3D' = cudaDevicePropPtr_get_maxSurface3D,
		'maxSurface1DLayered' = cudaDevicePropPtr_get_maxSurface1DLayered,
		'maxSurface2DLayered' = cudaDevicePropPtr_get_maxSurface2DLayered,
		'maxSurfaceCubemap' = cudaDevicePropPtr_get_maxSurfaceCubemap,
		'maxSurfaceCubemapLayered' = cudaDevicePropPtr_get_maxSurfaceCubemapLayered,
		'surfaceAlignment' = cudaDevicePropPtr_get_surfaceAlignment,
		'concurrentKernels' = cudaDevicePropPtr_get_concurrentKernels,
		'ECCEnabled' = cudaDevicePropPtr_get_ECCEnabled,
		'pciBusID' = cudaDevicePropPtr_get_pciBusID,
		'pciDeviceID' = cudaDevicePropPtr_get_pciDeviceID,
		'pciDomainID' = cudaDevicePropPtr_get_pciDomainID,
		'tccDriver' = cudaDevicePropPtr_get_tccDriver,
		'asyncEngineCount' = cudaDevicePropPtr_get_asyncEngineCount,
		'unifiedAddressing' = cudaDevicePropPtr_get_unifiedAddressing,
		'memoryClockRate' = cudaDevicePropPtr_get_memoryClockRate,
		'memoryBusWidth' = cudaDevicePropPtr_get_memoryBusWidth,
		'l2CacheSize' = cudaDevicePropPtr_get_l2CacheSize,
		'maxThreadsPerMultiProcessor' = cudaDevicePropPtr_get_maxThreadsPerMultiProcessor )
    idx = pmatch(name, names(.fieldFuns))
       if(is.na(idx))
        stop("no such field ", name, " in cudaDeviceProp. Should be one of ", paste(names(.fieldFuns), collapse = ", "))
    .hasCopyParam = c( TRUE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, TRUE, TRUE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, TRUE, TRUE, TRUE, TRUE, TRUE, FALSE, TRUE, TRUE, TRUE, FALSE, TRUE, TRUE, TRUE, TRUE, FALSE, TRUE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE )
    if(.hasCopyParam[idx])
      return(.fieldFuns[[idx]](x, as.integer( TRUE )))
    .fieldFuns[[idx]](x, TRUE)
} )
 
setMethod( '$<-' , c( 'cudaDevicePropPtr' ),       
function( x , name , value  )
{
    .fieldFuns = c( 'name' = cudaDevicePropPtr_set_name,
		'totalGlobalMem' = cudaDevicePropPtr_set_totalGlobalMem,
		'sharedMemPerBlock' = cudaDevicePropPtr_set_sharedMemPerBlock,
		'regsPerBlock' = cudaDevicePropPtr_set_regsPerBlock,
		'warpSize' = cudaDevicePropPtr_set_warpSize,
		'memPitch' = cudaDevicePropPtr_set_memPitch,
		'maxThreadsPerBlock' = cudaDevicePropPtr_set_maxThreadsPerBlock,
		'maxThreadsDim' = cudaDevicePropPtr_set_maxThreadsDim,
		'maxGridSize' = cudaDevicePropPtr_set_maxGridSize,
		'clockRate' = cudaDevicePropPtr_set_clockRate,
		'totalConstMem' = cudaDevicePropPtr_set_totalConstMem,
		'major' = cudaDevicePropPtr_set_major,
		'minor' = cudaDevicePropPtr_set_minor,
		'textureAlignment' = cudaDevicePropPtr_set_textureAlignment,
		'texturePitchAlignment' = cudaDevicePropPtr_set_texturePitchAlignment,
		'deviceOverlap' = cudaDevicePropPtr_set_deviceOverlap,
		'multiProcessorCount' = cudaDevicePropPtr_set_multiProcessorCount,
		'kernelExecTimeoutEnabled' = cudaDevicePropPtr_set_kernelExecTimeoutEnabled,
		'integrated' = cudaDevicePropPtr_set_integrated,
		'canMapHostMemory' = cudaDevicePropPtr_set_canMapHostMemory,
		'computeMode' = cudaDevicePropPtr_set_computeMode,
		'maxTexture1D' = cudaDevicePropPtr_set_maxTexture1D,
		'maxTexture1DMipmap' = cudaDevicePropPtr_set_maxTexture1DMipmap,
		'maxTexture1DLinear' = cudaDevicePropPtr_set_maxTexture1DLinear,
		'maxTexture2D' = cudaDevicePropPtr_set_maxTexture2D,
		'maxTexture2DMipmap' = cudaDevicePropPtr_set_maxTexture2DMipmap,
		'maxTexture2DLinear' = cudaDevicePropPtr_set_maxTexture2DLinear,
		'maxTexture2DGather' = cudaDevicePropPtr_set_maxTexture2DGather,
		'maxTexture3D' = cudaDevicePropPtr_set_maxTexture3D,
		'maxTextureCubemap' = cudaDevicePropPtr_set_maxTextureCubemap,
		'maxTexture1DLayered' = cudaDevicePropPtr_set_maxTexture1DLayered,
		'maxTexture2DLayered' = cudaDevicePropPtr_set_maxTexture2DLayered,
		'maxTextureCubemapLayered' = cudaDevicePropPtr_set_maxTextureCubemapLayered,
		'maxSurface1D' = cudaDevicePropPtr_set_maxSurface1D,
		'maxSurface2D' = cudaDevicePropPtr_set_maxSurface2D,
		'maxSurface3D' = cudaDevicePropPtr_set_maxSurface3D,
		'maxSurface1DLayered' = cudaDevicePropPtr_set_maxSurface1DLayered,
		'maxSurface2DLayered' = cudaDevicePropPtr_set_maxSurface2DLayered,
		'maxSurfaceCubemap' = cudaDevicePropPtr_set_maxSurfaceCubemap,
		'maxSurfaceCubemapLayered' = cudaDevicePropPtr_set_maxSurfaceCubemapLayered,
		'surfaceAlignment' = cudaDevicePropPtr_set_surfaceAlignment,
		'concurrentKernels' = cudaDevicePropPtr_set_concurrentKernels,
		'ECCEnabled' = cudaDevicePropPtr_set_ECCEnabled,
		'pciBusID' = cudaDevicePropPtr_set_pciBusID,
		'pciDeviceID' = cudaDevicePropPtr_set_pciDeviceID,
		'pciDomainID' = cudaDevicePropPtr_set_pciDomainID,
		'tccDriver' = cudaDevicePropPtr_set_tccDriver,
		'asyncEngineCount' = cudaDevicePropPtr_set_asyncEngineCount,
		'unifiedAddressing' = cudaDevicePropPtr_set_unifiedAddressing,
		'memoryClockRate' = cudaDevicePropPtr_set_memoryClockRate,
		'memoryBusWidth' = cudaDevicePropPtr_set_memoryBusWidth,
		'l2CacheSize' = cudaDevicePropPtr_set_l2CacheSize,
		'maxThreadsPerMultiProcessor' = cudaDevicePropPtr_set_maxThreadsPerMultiProcessor )
    idx = pmatch(name, names(.fieldFuns))
       if(is.na(idx))
        stop("no such field ", name, " in cudaDeviceProp. Should be one of ", paste(names(.fieldFuns), collapse = ", "))
    .fieldFuns[[idx]](x, value)
} )
 
setMethod( '[[' , c( 'cudaDevicePropPtr' ),       
function( x , i , j , ... , exact = TRUE, copy = TRUE )
{
    .fieldFuns = c( 'name' = cudaDevicePropPtr_get_name,
		'totalGlobalMem' = cudaDevicePropPtr_get_totalGlobalMem,
		'sharedMemPerBlock' = cudaDevicePropPtr_get_sharedMemPerBlock,
		'regsPerBlock' = cudaDevicePropPtr_get_regsPerBlock,
		'warpSize' = cudaDevicePropPtr_get_warpSize,
		'memPitch' = cudaDevicePropPtr_get_memPitch,
		'maxThreadsPerBlock' = cudaDevicePropPtr_get_maxThreadsPerBlock,
		'maxThreadsDim' = cudaDevicePropPtr_get_maxThreadsDim,
		'maxGridSize' = cudaDevicePropPtr_get_maxGridSize,
		'clockRate' = cudaDevicePropPtr_get_clockRate,
		'totalConstMem' = cudaDevicePropPtr_get_totalConstMem,
		'major' = cudaDevicePropPtr_get_major,
		'minor' = cudaDevicePropPtr_get_minor,
		'textureAlignment' = cudaDevicePropPtr_get_textureAlignment,
		'texturePitchAlignment' = cudaDevicePropPtr_get_texturePitchAlignment,
		'deviceOverlap' = cudaDevicePropPtr_get_deviceOverlap,
		'multiProcessorCount' = cudaDevicePropPtr_get_multiProcessorCount,
		'kernelExecTimeoutEnabled' = cudaDevicePropPtr_get_kernelExecTimeoutEnabled,
		'integrated' = cudaDevicePropPtr_get_integrated,
		'canMapHostMemory' = cudaDevicePropPtr_get_canMapHostMemory,
		'computeMode' = cudaDevicePropPtr_get_computeMode,
		'maxTexture1D' = cudaDevicePropPtr_get_maxTexture1D,
		'maxTexture1DMipmap' = cudaDevicePropPtr_get_maxTexture1DMipmap,
		'maxTexture1DLinear' = cudaDevicePropPtr_get_maxTexture1DLinear,
		'maxTexture2D' = cudaDevicePropPtr_get_maxTexture2D,
		'maxTexture2DMipmap' = cudaDevicePropPtr_get_maxTexture2DMipmap,
		'maxTexture2DLinear' = cudaDevicePropPtr_get_maxTexture2DLinear,
		'maxTexture2DGather' = cudaDevicePropPtr_get_maxTexture2DGather,
		'maxTexture3D' = cudaDevicePropPtr_get_maxTexture3D,
		'maxTextureCubemap' = cudaDevicePropPtr_get_maxTextureCubemap,
		'maxTexture1DLayered' = cudaDevicePropPtr_get_maxTexture1DLayered,
		'maxTexture2DLayered' = cudaDevicePropPtr_get_maxTexture2DLayered,
		'maxTextureCubemapLayered' = cudaDevicePropPtr_get_maxTextureCubemapLayered,
		'maxSurface1D' = cudaDevicePropPtr_get_maxSurface1D,
		'maxSurface2D' = cudaDevicePropPtr_get_maxSurface2D,
		'maxSurface3D' = cudaDevicePropPtr_get_maxSurface3D,
		'maxSurface1DLayered' = cudaDevicePropPtr_get_maxSurface1DLayered,
		'maxSurface2DLayered' = cudaDevicePropPtr_get_maxSurface2DLayered,
		'maxSurfaceCubemap' = cudaDevicePropPtr_get_maxSurfaceCubemap,
		'maxSurfaceCubemapLayered' = cudaDevicePropPtr_get_maxSurfaceCubemapLayered,
		'surfaceAlignment' = cudaDevicePropPtr_get_surfaceAlignment,
		'concurrentKernels' = cudaDevicePropPtr_get_concurrentKernels,
		'ECCEnabled' = cudaDevicePropPtr_get_ECCEnabled,
		'pciBusID' = cudaDevicePropPtr_get_pciBusID,
		'pciDeviceID' = cudaDevicePropPtr_get_pciDeviceID,
		'pciDomainID' = cudaDevicePropPtr_get_pciDomainID,
		'tccDriver' = cudaDevicePropPtr_get_tccDriver,
		'asyncEngineCount' = cudaDevicePropPtr_get_asyncEngineCount,
		'unifiedAddressing' = cudaDevicePropPtr_get_unifiedAddressing,
		'memoryClockRate' = cudaDevicePropPtr_get_memoryClockRate,
		'memoryBusWidth' = cudaDevicePropPtr_get_memoryBusWidth,
		'l2CacheSize' = cudaDevicePropPtr_get_l2CacheSize,
		'maxThreadsPerMultiProcessor' = cudaDevicePropPtr_get_maxThreadsPerMultiProcessor )
    idx = (if(exact) match else pmatch)(i, names(.fieldFuns))
    if(is.na(idx)) {
       idx = (if(exact) match else pmatch)(i, c( 'cudaDevicePropPtr::name', 'cudaDevicePropPtr::totalGlobalMem', 'cudaDevicePropPtr::sharedMemPerBlock', 'cudaDevicePropPtr::regsPerBlock', 'cudaDevicePropPtr::warpSize', 'cudaDevicePropPtr::memPitch', 'cudaDevicePropPtr::maxThreadsPerBlock', 'cudaDevicePropPtr::maxThreadsDim', 'cudaDevicePropPtr::maxGridSize', 'cudaDevicePropPtr::clockRate', 'cudaDevicePropPtr::totalConstMem', 'cudaDevicePropPtr::major', 'cudaDevicePropPtr::minor', 'cudaDevicePropPtr::textureAlignment', 'cudaDevicePropPtr::texturePitchAlignment', 'cudaDevicePropPtr::deviceOverlap', 'cudaDevicePropPtr::multiProcessorCount', 'cudaDevicePropPtr::kernelExecTimeoutEnabled', 'cudaDevicePropPtr::integrated', 'cudaDevicePropPtr::canMapHostMemory', 'cudaDevicePropPtr::computeMode', 'cudaDevicePropPtr::maxTexture1D', 'cudaDevicePropPtr::maxTexture1DMipmap', 'cudaDevicePropPtr::maxTexture1DLinear', 'cudaDevicePropPtr::maxTexture2D', 'cudaDevicePropPtr::maxTexture2DMipmap', 'cudaDevicePropPtr::maxTexture2DLinear', 'cudaDevicePropPtr::maxTexture2DGather', 'cudaDevicePropPtr::maxTexture3D', 'cudaDevicePropPtr::maxTextureCubemap', 'cudaDevicePropPtr::maxTexture1DLayered', 'cudaDevicePropPtr::maxTexture2DLayered', 'cudaDevicePropPtr::maxTextureCubemapLayered', 'cudaDevicePropPtr::maxSurface1D', 'cudaDevicePropPtr::maxSurface2D', 'cudaDevicePropPtr::maxSurface3D', 'cudaDevicePropPtr::maxSurface1DLayered', 'cudaDevicePropPtr::maxSurface2DLayered', 'cudaDevicePropPtr::maxSurfaceCubemap', 'cudaDevicePropPtr::maxSurfaceCubemapLayered', 'cudaDevicePropPtr::surfaceAlignment', 'cudaDevicePropPtr::concurrentKernels', 'cudaDevicePropPtr::ECCEnabled', 'cudaDevicePropPtr::pciBusID', 'cudaDevicePropPtr::pciDeviceID', 'cudaDevicePropPtr::pciDomainID', 'cudaDevicePropPtr::tccDriver', 'cudaDevicePropPtr::asyncEngineCount', 'cudaDevicePropPtr::unifiedAddressing', 'cudaDevicePropPtr::memoryClockRate', 'cudaDevicePropPtr::memoryBusWidth', 'cudaDevicePropPtr::l2CacheSize', 'cudaDevicePropPtr::maxThreadsPerMultiProcessor' ))
       if(is.na(idx))
        stop("no such field ", i, " in cudaDeviceProp. Should be one of ", paste(names(.fieldFuns), collapse = ", "))
    }
    .hasCopyParam = c( TRUE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, TRUE, TRUE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, TRUE, TRUE, TRUE, TRUE, TRUE, FALSE, TRUE, TRUE, TRUE, FALSE, TRUE, TRUE, TRUE, TRUE, FALSE, TRUE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE )
    if(.hasCopyParam[idx])
      return(.fieldFuns[[idx]](x, as.integer( copy )))
    .fieldFuns[[idx]](x)
} )
 
cudaDevicePropPtr_get_name <-
function( x , copy = TRUE )
{
	.Call('R_cudaDevicePropPtr_get_name',as(x, "cudaDevicePropPtr" ), as.integer(copy))
} 
cudaDevicePropPtr_get_totalGlobalMem <-
function( x , copy = TRUE )
{
	.Call('R_cudaDevicePropPtr_get_totalGlobalMem',as(x, "cudaDevicePropPtr" ), as.integer(copy))
} 
cudaDevicePropPtr_get_sharedMemPerBlock <-
function( x , copy = TRUE )
{
	.Call('R_cudaDevicePropPtr_get_sharedMemPerBlock',as(x, "cudaDevicePropPtr" ), as.integer(copy))
} 
cudaDevicePropPtr_get_regsPerBlock <-
function( x , copy = TRUE )
{
	.Call('R_cudaDevicePropPtr_get_regsPerBlock',as(x, "cudaDevicePropPtr" ), as.integer(copy))
} 
cudaDevicePropPtr_get_warpSize <-
function( x , copy = TRUE )
{
	.Call('R_cudaDevicePropPtr_get_warpSize',as(x, "cudaDevicePropPtr" ), as.integer(copy))
} 
cudaDevicePropPtr_get_memPitch <-
function( x , copy = TRUE )
{
	.Call('R_cudaDevicePropPtr_get_memPitch',as(x, "cudaDevicePropPtr" ), as.integer(copy))
} 
cudaDevicePropPtr_get_maxThreadsPerBlock <-
function( x , copy = TRUE )
{
	.Call('R_cudaDevicePropPtr_get_maxThreadsPerBlock',as(x, "cudaDevicePropPtr" ), as.integer(copy))
} 
cudaDevicePropPtr_get_maxThreadsDim <-
function( x , copy = TRUE )
{
	.Call('R_cudaDevicePropPtr_get_maxThreadsDim',as(x, "cudaDevicePropPtr" ), as.integer(copy))
} 
cudaDevicePropPtr_get_maxGridSize <-
function( x , copy = TRUE )
{
	.Call('R_cudaDevicePropPtr_get_maxGridSize',as(x, "cudaDevicePropPtr" ), as.integer(copy))
} 
cudaDevicePropPtr_get_clockRate <-
function( x , copy = TRUE )
{
	.Call('R_cudaDevicePropPtr_get_clockRate',as(x, "cudaDevicePropPtr" ), as.integer(copy))
} 
cudaDevicePropPtr_get_totalConstMem <-
function( x , copy = TRUE )
{
	.Call('R_cudaDevicePropPtr_get_totalConstMem',as(x, "cudaDevicePropPtr" ), as.integer(copy))
} 
cudaDevicePropPtr_get_major <-
function( x , copy = TRUE )
{
	.Call('R_cudaDevicePropPtr_get_major',as(x, "cudaDevicePropPtr" ), as.integer(copy))
} 
cudaDevicePropPtr_get_minor <-
function( x , copy = TRUE )
{
	.Call('R_cudaDevicePropPtr_get_minor',as(x, "cudaDevicePropPtr" ), as.integer(copy))
} 
cudaDevicePropPtr_get_textureAlignment <-
function( x , copy = TRUE )
{
	.Call('R_cudaDevicePropPtr_get_textureAlignment',as(x, "cudaDevicePropPtr" ), as.integer(copy))
} 
cudaDevicePropPtr_get_texturePitchAlignment <-
function( x , copy = TRUE )
{
	.Call('R_cudaDevicePropPtr_get_texturePitchAlignment',as(x, "cudaDevicePropPtr" ), as.integer(copy))
} 
cudaDevicePropPtr_get_deviceOverlap <-
function( x , copy = TRUE )
{
	.Call('R_cudaDevicePropPtr_get_deviceOverlap',as(x, "cudaDevicePropPtr" ), as.integer(copy))
} 
cudaDevicePropPtr_get_multiProcessorCount <-
function( x , copy = TRUE )
{
	.Call('R_cudaDevicePropPtr_get_multiProcessorCount',as(x, "cudaDevicePropPtr" ), as.integer(copy))
} 
cudaDevicePropPtr_get_kernelExecTimeoutEnabled <-
function( x , copy = TRUE )
{
	.Call('R_cudaDevicePropPtr_get_kernelExecTimeoutEnabled',as(x, "cudaDevicePropPtr" ), as.integer(copy))
} 
cudaDevicePropPtr_get_integrated <-
function( x , copy = TRUE )
{
	.Call('R_cudaDevicePropPtr_get_integrated',as(x, "cudaDevicePropPtr" ), as.integer(copy))
} 
cudaDevicePropPtr_get_canMapHostMemory <-
function( x , copy = TRUE )
{
	.Call('R_cudaDevicePropPtr_get_canMapHostMemory',as(x, "cudaDevicePropPtr" ), as.integer(copy))
} 
cudaDevicePropPtr_get_computeMode <-
function( x , copy = TRUE )
{
	.Call('R_cudaDevicePropPtr_get_computeMode',as(x, "cudaDevicePropPtr" ), as.integer(copy))
} 
cudaDevicePropPtr_get_maxTexture1D <-
function( x , copy = TRUE )
{
	.Call('R_cudaDevicePropPtr_get_maxTexture1D',as(x, "cudaDevicePropPtr" ), as.integer(copy))
} 
cudaDevicePropPtr_get_maxTexture1DMipmap <-
function( x , copy = TRUE )
{
	.Call('R_cudaDevicePropPtr_get_maxTexture1DMipmap',as(x, "cudaDevicePropPtr" ), as.integer(copy))
} 
cudaDevicePropPtr_get_maxTexture1DLinear <-
function( x , copy = TRUE )
{
	.Call('R_cudaDevicePropPtr_get_maxTexture1DLinear',as(x, "cudaDevicePropPtr" ), as.integer(copy))
} 
cudaDevicePropPtr_get_maxTexture2D <-
function( x , copy = TRUE )
{
	.Call('R_cudaDevicePropPtr_get_maxTexture2D',as(x, "cudaDevicePropPtr" ), as.integer(copy))
} 
cudaDevicePropPtr_get_maxTexture2DMipmap <-
function( x , copy = TRUE )
{
	.Call('R_cudaDevicePropPtr_get_maxTexture2DMipmap',as(x, "cudaDevicePropPtr" ), as.integer(copy))
} 
cudaDevicePropPtr_get_maxTexture2DLinear <-
function( x , copy = TRUE )
{
	.Call('R_cudaDevicePropPtr_get_maxTexture2DLinear',as(x, "cudaDevicePropPtr" ), as.integer(copy))
} 
cudaDevicePropPtr_get_maxTexture2DGather <-
function( x , copy = TRUE )
{
	.Call('R_cudaDevicePropPtr_get_maxTexture2DGather',as(x, "cudaDevicePropPtr" ), as.integer(copy))
} 
cudaDevicePropPtr_get_maxTexture3D <-
function( x , copy = TRUE )
{
	.Call('R_cudaDevicePropPtr_get_maxTexture3D',as(x, "cudaDevicePropPtr" ), as.integer(copy))
} 
cudaDevicePropPtr_get_maxTextureCubemap <-
function( x , copy = TRUE )
{
	.Call('R_cudaDevicePropPtr_get_maxTextureCubemap',as(x, "cudaDevicePropPtr" ), as.integer(copy))
} 
cudaDevicePropPtr_get_maxTexture1DLayered <-
function( x , copy = TRUE )
{
	.Call('R_cudaDevicePropPtr_get_maxTexture1DLayered',as(x, "cudaDevicePropPtr" ), as.integer(copy))
} 
cudaDevicePropPtr_get_maxTexture2DLayered <-
function( x , copy = TRUE )
{
	.Call('R_cudaDevicePropPtr_get_maxTexture2DLayered',as(x, "cudaDevicePropPtr" ), as.integer(copy))
} 
cudaDevicePropPtr_get_maxTextureCubemapLayered <-
function( x , copy = TRUE )
{
	.Call('R_cudaDevicePropPtr_get_maxTextureCubemapLayered',as(x, "cudaDevicePropPtr" ), as.integer(copy))
} 
cudaDevicePropPtr_get_maxSurface1D <-
function( x , copy = TRUE )
{
	.Call('R_cudaDevicePropPtr_get_maxSurface1D',as(x, "cudaDevicePropPtr" ), as.integer(copy))
} 
cudaDevicePropPtr_get_maxSurface2D <-
function( x , copy = TRUE )
{
	.Call('R_cudaDevicePropPtr_get_maxSurface2D',as(x, "cudaDevicePropPtr" ), as.integer(copy))
} 
cudaDevicePropPtr_get_maxSurface3D <-
function( x , copy = TRUE )
{
	.Call('R_cudaDevicePropPtr_get_maxSurface3D',as(x, "cudaDevicePropPtr" ), as.integer(copy))
} 
cudaDevicePropPtr_get_maxSurface1DLayered <-
function( x , copy = TRUE )
{
	.Call('R_cudaDevicePropPtr_get_maxSurface1DLayered',as(x, "cudaDevicePropPtr" ), as.integer(copy))
} 
cudaDevicePropPtr_get_maxSurface2DLayered <-
function( x , copy = TRUE )
{
	.Call('R_cudaDevicePropPtr_get_maxSurface2DLayered',as(x, "cudaDevicePropPtr" ), as.integer(copy))
} 
cudaDevicePropPtr_get_maxSurfaceCubemap <-
function( x , copy = TRUE )
{
	.Call('R_cudaDevicePropPtr_get_maxSurfaceCubemap',as(x, "cudaDevicePropPtr" ), as.integer(copy))
} 
cudaDevicePropPtr_get_maxSurfaceCubemapLayered <-
function( x , copy = TRUE )
{
	.Call('R_cudaDevicePropPtr_get_maxSurfaceCubemapLayered',as(x, "cudaDevicePropPtr" ), as.integer(copy))
} 
cudaDevicePropPtr_get_surfaceAlignment <-
function( x , copy = TRUE )
{
	.Call('R_cudaDevicePropPtr_get_surfaceAlignment',as(x, "cudaDevicePropPtr" ), as.integer(copy))
} 
cudaDevicePropPtr_get_concurrentKernels <-
function( x , copy = TRUE )
{
	.Call('R_cudaDevicePropPtr_get_concurrentKernels',as(x, "cudaDevicePropPtr" ), as.integer(copy))
} 
cudaDevicePropPtr_get_ECCEnabled <-
function( x , copy = TRUE )
{
	.Call('R_cudaDevicePropPtr_get_ECCEnabled',as(x, "cudaDevicePropPtr" ), as.integer(copy))
} 
cudaDevicePropPtr_get_pciBusID <-
function( x , copy = TRUE )
{
	.Call('R_cudaDevicePropPtr_get_pciBusID',as(x, "cudaDevicePropPtr" ), as.integer(copy))
} 
cudaDevicePropPtr_get_pciDeviceID <-
function( x , copy = TRUE )
{
	.Call('R_cudaDevicePropPtr_get_pciDeviceID',as(x, "cudaDevicePropPtr" ), as.integer(copy))
} 
cudaDevicePropPtr_get_pciDomainID <-
function( x , copy = TRUE )
{
	.Call('R_cudaDevicePropPtr_get_pciDomainID',as(x, "cudaDevicePropPtr" ), as.integer(copy))
} 
cudaDevicePropPtr_get_tccDriver <-
function( x , copy = TRUE )
{
	.Call('R_cudaDevicePropPtr_get_tccDriver',as(x, "cudaDevicePropPtr" ), as.integer(copy))
} 
cudaDevicePropPtr_get_asyncEngineCount <-
function( x , copy = TRUE )
{
	.Call('R_cudaDevicePropPtr_get_asyncEngineCount',as(x, "cudaDevicePropPtr" ), as.integer(copy))
} 
cudaDevicePropPtr_get_unifiedAddressing <-
function( x , copy = TRUE )
{
	.Call('R_cudaDevicePropPtr_get_unifiedAddressing',as(x, "cudaDevicePropPtr" ), as.integer(copy))
} 
cudaDevicePropPtr_get_memoryClockRate <-
function( x , copy = TRUE )
{
	.Call('R_cudaDevicePropPtr_get_memoryClockRate',as(x, "cudaDevicePropPtr" ), as.integer(copy))
} 
cudaDevicePropPtr_get_memoryBusWidth <-
function( x , copy = TRUE )
{
	.Call('R_cudaDevicePropPtr_get_memoryBusWidth',as(x, "cudaDevicePropPtr" ), as.integer(copy))
} 
cudaDevicePropPtr_get_l2CacheSize <-
function( x , copy = TRUE )
{
	.Call('R_cudaDevicePropPtr_get_l2CacheSize',as(x, "cudaDevicePropPtr" ), as.integer(copy))
} 
cudaDevicePropPtr_get_maxThreadsPerMultiProcessor <-
function( x , copy = TRUE )
{
	.Call('R_cudaDevicePropPtr_get_maxThreadsPerMultiProcessor',as(x, "cudaDevicePropPtr" ), as.integer(copy))
} 
cudaDevicePropPtr_set_name <-
function( x , value  )
{
    	value = as( value , 'integer') 

 	if(length( value ) != 256 ) {
 	     value = fixArrayLength( value ,  256 )
 	    length( value ) <-  256 
	}


    	.Call('R_cudaDevicePropPtr_set_name',as(x, "cudaDevicePropPtr" ), value)
} 
cudaDevicePropPtr_set_totalGlobalMem <-
function( x , value  )
{
    	value = asUnsigned( value , 'numeric')
    	.Call('R_cudaDevicePropPtr_set_totalGlobalMem',as(x, "cudaDevicePropPtr" ), value)
} 
cudaDevicePropPtr_set_sharedMemPerBlock <-
function( x , value  )
{
    	value = asUnsigned( value , 'numeric')
    	.Call('R_cudaDevicePropPtr_set_sharedMemPerBlock',as(x, "cudaDevicePropPtr" ), value)
} 
cudaDevicePropPtr_set_regsPerBlock <-
function( x , value  )
{
    	value = as( value , 'integer')
    	.Call('R_cudaDevicePropPtr_set_regsPerBlock',as(x, "cudaDevicePropPtr" ), value)
} 
cudaDevicePropPtr_set_warpSize <-
function( x , value  )
{
    	value = as( value , 'integer')
    	.Call('R_cudaDevicePropPtr_set_warpSize',as(x, "cudaDevicePropPtr" ), value)
} 
cudaDevicePropPtr_set_memPitch <-
function( x , value  )
{
    	value = asUnsigned( value , 'numeric')
    	.Call('R_cudaDevicePropPtr_set_memPitch',as(x, "cudaDevicePropPtr" ), value)
} 
cudaDevicePropPtr_set_maxThreadsPerBlock <-
function( x , value  )
{
    	value = as( value , 'integer')
    	.Call('R_cudaDevicePropPtr_set_maxThreadsPerBlock',as(x, "cudaDevicePropPtr" ), value)
} 
cudaDevicePropPtr_set_maxThreadsDim <-
function( x , value  )
{
    	value = as( value , 'integer') 

 	if(length( value ) != 3 ) {
 	     value = fixArrayLength( value ,  3 )
 	    length( value ) <-  3 
	}


    	.Call('R_cudaDevicePropPtr_set_maxThreadsDim',as(x, "cudaDevicePropPtr" ), value)
} 
cudaDevicePropPtr_set_maxGridSize <-
function( x , value  )
{
    	value = as( value , 'integer') 

 	if(length( value ) != 3 ) {
 	     value = fixArrayLength( value ,  3 )
 	    length( value ) <-  3 
	}


    	.Call('R_cudaDevicePropPtr_set_maxGridSize',as(x, "cudaDevicePropPtr" ), value)
} 
cudaDevicePropPtr_set_clockRate <-
function( x , value  )
{
    	value = as( value , 'integer')
    	.Call('R_cudaDevicePropPtr_set_clockRate',as(x, "cudaDevicePropPtr" ), value)
} 
cudaDevicePropPtr_set_totalConstMem <-
function( x , value  )
{
    	value = asUnsigned( value , 'numeric')
    	.Call('R_cudaDevicePropPtr_set_totalConstMem',as(x, "cudaDevicePropPtr" ), value)
} 
cudaDevicePropPtr_set_major <-
function( x , value  )
{
    	value = as( value , 'integer')
    	.Call('R_cudaDevicePropPtr_set_major',as(x, "cudaDevicePropPtr" ), value)
} 
cudaDevicePropPtr_set_minor <-
function( x , value  )
{
    	value = as( value , 'integer')
    	.Call('R_cudaDevicePropPtr_set_minor',as(x, "cudaDevicePropPtr" ), value)
} 
cudaDevicePropPtr_set_textureAlignment <-
function( x , value  )
{
    	value = asUnsigned( value , 'numeric')
    	.Call('R_cudaDevicePropPtr_set_textureAlignment',as(x, "cudaDevicePropPtr" ), value)
} 
cudaDevicePropPtr_set_texturePitchAlignment <-
function( x , value  )
{
    	value = asUnsigned( value , 'numeric')
    	.Call('R_cudaDevicePropPtr_set_texturePitchAlignment',as(x, "cudaDevicePropPtr" ), value)
} 
cudaDevicePropPtr_set_deviceOverlap <-
function( x , value  )
{
    	value = as( value , 'integer')
    	.Call('R_cudaDevicePropPtr_set_deviceOverlap',as(x, "cudaDevicePropPtr" ), value)
} 
cudaDevicePropPtr_set_multiProcessorCount <-
function( x , value  )
{
    	value = as( value , 'integer')
    	.Call('R_cudaDevicePropPtr_set_multiProcessorCount',as(x, "cudaDevicePropPtr" ), value)
} 
cudaDevicePropPtr_set_kernelExecTimeoutEnabled <-
function( x , value  )
{
    	value = as( value , 'integer')
    	.Call('R_cudaDevicePropPtr_set_kernelExecTimeoutEnabled',as(x, "cudaDevicePropPtr" ), value)
} 
cudaDevicePropPtr_set_integrated <-
function( x , value  )
{
    	value = as( value , 'integer')
    	.Call('R_cudaDevicePropPtr_set_integrated',as(x, "cudaDevicePropPtr" ), value)
} 
cudaDevicePropPtr_set_canMapHostMemory <-
function( x , value  )
{
    	value = as( value , 'integer')
    	.Call('R_cudaDevicePropPtr_set_canMapHostMemory',as(x, "cudaDevicePropPtr" ), value)
} 
cudaDevicePropPtr_set_computeMode <-
function( x , value  )
{
    	value = as( value , 'integer')
    	.Call('R_cudaDevicePropPtr_set_computeMode',as(x, "cudaDevicePropPtr" ), value)
} 
cudaDevicePropPtr_set_maxTexture1D <-
function( x , value  )
{
    	value = as( value , 'integer')
    	.Call('R_cudaDevicePropPtr_set_maxTexture1D',as(x, "cudaDevicePropPtr" ), value)
} 
cudaDevicePropPtr_set_maxTexture1DMipmap <-
function( x , value  )
{
    	value = as( value , 'integer')
    	.Call('R_cudaDevicePropPtr_set_maxTexture1DMipmap',as(x, "cudaDevicePropPtr" ), value)
} 
cudaDevicePropPtr_set_maxTexture1DLinear <-
function( x , value  )
{
    	value = as( value , 'integer')
    	.Call('R_cudaDevicePropPtr_set_maxTexture1DLinear',as(x, "cudaDevicePropPtr" ), value)
} 
cudaDevicePropPtr_set_maxTexture2D <-
function( x , value  )
{
    	value = as( value , 'integer') 

 	if(length( value ) != 2 ) {
 	     value = fixArrayLength( value ,  2 )
 	    length( value ) <-  2 
	}


    	.Call('R_cudaDevicePropPtr_set_maxTexture2D',as(x, "cudaDevicePropPtr" ), value)
} 
cudaDevicePropPtr_set_maxTexture2DMipmap <-
function( x , value  )
{
    	value = as( value , 'integer') 

 	if(length( value ) != 2 ) {
 	     value = fixArrayLength( value ,  2 )
 	    length( value ) <-  2 
	}


    	.Call('R_cudaDevicePropPtr_set_maxTexture2DMipmap',as(x, "cudaDevicePropPtr" ), value)
} 
cudaDevicePropPtr_set_maxTexture2DLinear <-
function( x , value  )
{
    	value = as( value , 'integer') 

 	if(length( value ) != 3 ) {
 	     value = fixArrayLength( value ,  3 )
 	    length( value ) <-  3 
	}


    	.Call('R_cudaDevicePropPtr_set_maxTexture2DLinear',as(x, "cudaDevicePropPtr" ), value)
} 
cudaDevicePropPtr_set_maxTexture2DGather <-
function( x , value  )
{
    	value = as( value , 'integer') 

 	if(length( value ) != 2 ) {
 	     value = fixArrayLength( value ,  2 )
 	    length( value ) <-  2 
	}


    	.Call('R_cudaDevicePropPtr_set_maxTexture2DGather',as(x, "cudaDevicePropPtr" ), value)
} 
cudaDevicePropPtr_set_maxTexture3D <-
function( x , value  )
{
    	value = as( value , 'integer') 

 	if(length( value ) != 3 ) {
 	     value = fixArrayLength( value ,  3 )
 	    length( value ) <-  3 
	}


    	.Call('R_cudaDevicePropPtr_set_maxTexture3D',as(x, "cudaDevicePropPtr" ), value)
} 
cudaDevicePropPtr_set_maxTextureCubemap <-
function( x , value  )
{
    	value = as( value , 'integer')
    	.Call('R_cudaDevicePropPtr_set_maxTextureCubemap',as(x, "cudaDevicePropPtr" ), value)
} 
cudaDevicePropPtr_set_maxTexture1DLayered <-
function( x , value  )
{
    	value = as( value , 'integer') 

 	if(length( value ) != 2 ) {
 	     value = fixArrayLength( value ,  2 )
 	    length( value ) <-  2 
	}


    	.Call('R_cudaDevicePropPtr_set_maxTexture1DLayered',as(x, "cudaDevicePropPtr" ), value)
} 
cudaDevicePropPtr_set_maxTexture2DLayered <-
function( x , value  )
{
    	value = as( value , 'integer') 

 	if(length( value ) != 3 ) {
 	     value = fixArrayLength( value ,  3 )
 	    length( value ) <-  3 
	}


    	.Call('R_cudaDevicePropPtr_set_maxTexture2DLayered',as(x, "cudaDevicePropPtr" ), value)
} 
cudaDevicePropPtr_set_maxTextureCubemapLayered <-
function( x , value  )
{
    	value = as( value , 'integer') 

 	if(length( value ) != 2 ) {
 	     value = fixArrayLength( value ,  2 )
 	    length( value ) <-  2 
	}


    	.Call('R_cudaDevicePropPtr_set_maxTextureCubemapLayered',as(x, "cudaDevicePropPtr" ), value)
} 
cudaDevicePropPtr_set_maxSurface1D <-
function( x , value  )
{
    	value = as( value , 'integer')
    	.Call('R_cudaDevicePropPtr_set_maxSurface1D',as(x, "cudaDevicePropPtr" ), value)
} 
cudaDevicePropPtr_set_maxSurface2D <-
function( x , value  )
{
    	value = as( value , 'integer') 

 	if(length( value ) != 2 ) {
 	     value = fixArrayLength( value ,  2 )
 	    length( value ) <-  2 
	}


    	.Call('R_cudaDevicePropPtr_set_maxSurface2D',as(x, "cudaDevicePropPtr" ), value)
} 
cudaDevicePropPtr_set_maxSurface3D <-
function( x , value  )
{
    	value = as( value , 'integer') 

 	if(length( value ) != 3 ) {
 	     value = fixArrayLength( value ,  3 )
 	    length( value ) <-  3 
	}


    	.Call('R_cudaDevicePropPtr_set_maxSurface3D',as(x, "cudaDevicePropPtr" ), value)
} 
cudaDevicePropPtr_set_maxSurface1DLayered <-
function( x , value  )
{
    	value = as( value , 'integer') 

 	if(length( value ) != 2 ) {
 	     value = fixArrayLength( value ,  2 )
 	    length( value ) <-  2 
	}


    	.Call('R_cudaDevicePropPtr_set_maxSurface1DLayered',as(x, "cudaDevicePropPtr" ), value)
} 
cudaDevicePropPtr_set_maxSurface2DLayered <-
function( x , value  )
{
    	value = as( value , 'integer') 

 	if(length( value ) != 3 ) {
 	     value = fixArrayLength( value ,  3 )
 	    length( value ) <-  3 
	}


    	.Call('R_cudaDevicePropPtr_set_maxSurface2DLayered',as(x, "cudaDevicePropPtr" ), value)
} 
cudaDevicePropPtr_set_maxSurfaceCubemap <-
function( x , value  )
{
    	value = as( value , 'integer')
    	.Call('R_cudaDevicePropPtr_set_maxSurfaceCubemap',as(x, "cudaDevicePropPtr" ), value)
} 
cudaDevicePropPtr_set_maxSurfaceCubemapLayered <-
function( x , value  )
{
    	value = as( value , 'integer') 

 	if(length( value ) != 2 ) {
 	     value = fixArrayLength( value ,  2 )
 	    length( value ) <-  2 
	}


    	.Call('R_cudaDevicePropPtr_set_maxSurfaceCubemapLayered',as(x, "cudaDevicePropPtr" ), value)
} 
cudaDevicePropPtr_set_surfaceAlignment <-
function( x , value  )
{
    	value = asUnsigned( value , 'numeric')
    	.Call('R_cudaDevicePropPtr_set_surfaceAlignment',as(x, "cudaDevicePropPtr" ), value)
} 
cudaDevicePropPtr_set_concurrentKernels <-
function( x , value  )
{
    	value = as( value , 'integer')
    	.Call('R_cudaDevicePropPtr_set_concurrentKernels',as(x, "cudaDevicePropPtr" ), value)
} 
cudaDevicePropPtr_set_ECCEnabled <-
function( x , value  )
{
    	value = as( value , 'integer')
    	.Call('R_cudaDevicePropPtr_set_ECCEnabled',as(x, "cudaDevicePropPtr" ), value)
} 
cudaDevicePropPtr_set_pciBusID <-
function( x , value  )
{
    	value = as( value , 'integer')
    	.Call('R_cudaDevicePropPtr_set_pciBusID',as(x, "cudaDevicePropPtr" ), value)
} 
cudaDevicePropPtr_set_pciDeviceID <-
function( x , value  )
{
    	value = as( value , 'integer')
    	.Call('R_cudaDevicePropPtr_set_pciDeviceID',as(x, "cudaDevicePropPtr" ), value)
} 
cudaDevicePropPtr_set_pciDomainID <-
function( x , value  )
{
    	value = as( value , 'integer')
    	.Call('R_cudaDevicePropPtr_set_pciDomainID',as(x, "cudaDevicePropPtr" ), value)
} 
cudaDevicePropPtr_set_tccDriver <-
function( x , value  )
{
    	value = as( value , 'integer')
    	.Call('R_cudaDevicePropPtr_set_tccDriver',as(x, "cudaDevicePropPtr" ), value)
} 
cudaDevicePropPtr_set_asyncEngineCount <-
function( x , value  )
{
    	value = as( value , 'integer')
    	.Call('R_cudaDevicePropPtr_set_asyncEngineCount',as(x, "cudaDevicePropPtr" ), value)
} 
cudaDevicePropPtr_set_unifiedAddressing <-
function( x , value  )
{
    	value = as( value , 'integer')
    	.Call('R_cudaDevicePropPtr_set_unifiedAddressing',as(x, "cudaDevicePropPtr" ), value)
} 
cudaDevicePropPtr_set_memoryClockRate <-
function( x , value  )
{
    	value = as( value , 'integer')
    	.Call('R_cudaDevicePropPtr_set_memoryClockRate',as(x, "cudaDevicePropPtr" ), value)
} 
cudaDevicePropPtr_set_memoryBusWidth <-
function( x , value  )
{
    	value = as( value , 'integer')
    	.Call('R_cudaDevicePropPtr_set_memoryBusWidth',as(x, "cudaDevicePropPtr" ), value)
} 
cudaDevicePropPtr_set_l2CacheSize <-
function( x , value  )
{
    	value = as( value , 'integer')
    	.Call('R_cudaDevicePropPtr_set_l2CacheSize',as(x, "cudaDevicePropPtr" ), value)
} 
cudaDevicePropPtr_set_maxThreadsPerMultiProcessor <-
function( x , value  )
{
    	value = as( value , 'integer')
    	.Call('R_cudaDevicePropPtr_set_maxThreadsPerMultiProcessor',as(x, "cudaDevicePropPtr" ), value)
} 

setAs( "cudaDeviceProp" ,  "cudaDevicePropPtr" , 
function(from)
.Call('R_coerce_cudaDeviceProp_cudaDevicePropPtr', from )
)
setAs( "cudaDevicePropPtr" ,  "cudaDeviceProp" , 
function(from)
.Call('R_coerce_cudaDevicePropPtr_cudaDeviceProp', from)
) 
new_cudaDeviceProp <-
function( name , totalGlobalMem , sharedMemPerBlock , regsPerBlock , warpSize , memPitch , maxThreadsPerBlock , maxThreadsDim , maxGridSize , clockRate , totalConstMem , major , minor , textureAlignment , texturePitchAlignment , deviceOverlap , multiProcessorCount , kernelExecTimeoutEnabled , integrated , canMapHostMemory , computeMode , maxTexture1D , maxTexture1DMipmap , maxTexture1DLinear , maxTexture2D , maxTexture2DMipmap , maxTexture2DLinear , maxTexture2DGather , maxTexture3D , maxTextureCubemap , maxTexture1DLayered , maxTexture2DLayered , maxTextureCubemapLayered , maxSurface1D , maxSurface2D , maxSurface3D , maxSurface1DLayered , maxSurface2DLayered , maxSurfaceCubemap , maxSurfaceCubemapLayered , surfaceAlignment , concurrentKernels , ECCEnabled , pciBusID , pciDeviceID , pciDomainID , tccDriver , asyncEngineCount , unifiedAddressing , memoryClockRate , memoryBusWidth , l2CacheSize , maxThreadsPerMultiProcessor , .finalizer = TRUE )
{
    ans = .Call('R_new_cudaDeviceProp')
    if((is.logical(.finalizer) && .finalizer) || length(.finalizer) > 0)
        addFinalizer(ans, .finalizer, 'R_free_cudaDevicePropPtr_finalizer')
    
    if(!missing(name)) ans$name = name
    if(!missing(totalGlobalMem)) ans$totalGlobalMem = totalGlobalMem
    if(!missing(sharedMemPerBlock)) ans$sharedMemPerBlock = sharedMemPerBlock
    if(!missing(regsPerBlock)) ans$regsPerBlock = regsPerBlock
    if(!missing(warpSize)) ans$warpSize = warpSize
    if(!missing(memPitch)) ans$memPitch = memPitch
    if(!missing(maxThreadsPerBlock)) ans$maxThreadsPerBlock = maxThreadsPerBlock
    if(!missing(maxThreadsDim)) ans$maxThreadsDim = maxThreadsDim
    if(!missing(maxGridSize)) ans$maxGridSize = maxGridSize
    if(!missing(clockRate)) ans$clockRate = clockRate
    if(!missing(totalConstMem)) ans$totalConstMem = totalConstMem
    if(!missing(major)) ans$major = major
    if(!missing(minor)) ans$minor = minor
    if(!missing(textureAlignment)) ans$textureAlignment = textureAlignment
    if(!missing(texturePitchAlignment)) ans$texturePitchAlignment = texturePitchAlignment
    if(!missing(deviceOverlap)) ans$deviceOverlap = deviceOverlap
    if(!missing(multiProcessorCount)) ans$multiProcessorCount = multiProcessorCount
    if(!missing(kernelExecTimeoutEnabled)) ans$kernelExecTimeoutEnabled = kernelExecTimeoutEnabled
    if(!missing(integrated)) ans$integrated = integrated
    if(!missing(canMapHostMemory)) ans$canMapHostMemory = canMapHostMemory
    if(!missing(computeMode)) ans$computeMode = computeMode
    if(!missing(maxTexture1D)) ans$maxTexture1D = maxTexture1D
    if(!missing(maxTexture1DMipmap)) ans$maxTexture1DMipmap = maxTexture1DMipmap
    if(!missing(maxTexture1DLinear)) ans$maxTexture1DLinear = maxTexture1DLinear
    if(!missing(maxTexture2D)) ans$maxTexture2D = maxTexture2D
    if(!missing(maxTexture2DMipmap)) ans$maxTexture2DMipmap = maxTexture2DMipmap
    if(!missing(maxTexture2DLinear)) ans$maxTexture2DLinear = maxTexture2DLinear
    if(!missing(maxTexture2DGather)) ans$maxTexture2DGather = maxTexture2DGather
    if(!missing(maxTexture3D)) ans$maxTexture3D = maxTexture3D
    if(!missing(maxTextureCubemap)) ans$maxTextureCubemap = maxTextureCubemap
    if(!missing(maxTexture1DLayered)) ans$maxTexture1DLayered = maxTexture1DLayered
    if(!missing(maxTexture2DLayered)) ans$maxTexture2DLayered = maxTexture2DLayered
    if(!missing(maxTextureCubemapLayered)) ans$maxTextureCubemapLayered = maxTextureCubemapLayered
    if(!missing(maxSurface1D)) ans$maxSurface1D = maxSurface1D
    if(!missing(maxSurface2D)) ans$maxSurface2D = maxSurface2D
    if(!missing(maxSurface3D)) ans$maxSurface3D = maxSurface3D
    if(!missing(maxSurface1DLayered)) ans$maxSurface1DLayered = maxSurface1DLayered
    if(!missing(maxSurface2DLayered)) ans$maxSurface2DLayered = maxSurface2DLayered
    if(!missing(maxSurfaceCubemap)) ans$maxSurfaceCubemap = maxSurfaceCubemap
    if(!missing(maxSurfaceCubemapLayered)) ans$maxSurfaceCubemapLayered = maxSurfaceCubemapLayered
    if(!missing(surfaceAlignment)) ans$surfaceAlignment = surfaceAlignment
    if(!missing(concurrentKernels)) ans$concurrentKernels = concurrentKernels
    if(!missing(ECCEnabled)) ans$ECCEnabled = ECCEnabled
    if(!missing(pciBusID)) ans$pciBusID = pciBusID
    if(!missing(pciDeviceID)) ans$pciDeviceID = pciDeviceID
    if(!missing(pciDomainID)) ans$pciDomainID = pciDomainID
    if(!missing(tccDriver)) ans$tccDriver = tccDriver
    if(!missing(asyncEngineCount)) ans$asyncEngineCount = asyncEngineCount
    if(!missing(unifiedAddressing)) ans$unifiedAddressing = unifiedAddressing
    if(!missing(memoryClockRate)) ans$memoryClockRate = memoryClockRate
    if(!missing(memoryBusWidth)) ans$memoryBusWidth = memoryBusWidth
    if(!missing(l2CacheSize)) ans$l2CacheSize = l2CacheSize
    if(!missing(maxThreadsPerMultiProcessor)) ans$maxThreadsPerMultiProcessor = maxThreadsPerMultiProcessor
    na = pmatch(names(args), names(getSlots('cudaDeviceProp')))
    if(any(is.na(na)))
          stop('no fields match ', paste(names(args)[is.na(na)], collapse = ', '))
    
    for(i in names(args))
      do.call("$<-", list(ans, i, args[[i]]))
    
    ans
} 
setMethod( 'duplicate' , c( 'cudaDevicePropPtr' ),       
function( x , ... , .finalizer = 'R_free_cudaDevicePropPtr_finalizer' )
{
.Call( 'R_duplicate_cudaDeviceProp' , x, NULL, .finalizer)
} )
 

#### </End of definition>
