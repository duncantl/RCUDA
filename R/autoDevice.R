#include "RCUDA.h"


cuDeviceGet <-
function( ordinal  )
{
ans = .Call('R_cuDeviceGet', as(ordinal, 'integer'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_cuDeviceGet')
as(ans, 'CUdevice')
} 


cuDeviceGetCount <-
function(  )
{
ans = .Call('R_cuDeviceGetCount')
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_cuDeviceGetCount')
ans
}


cuDeviceTotalMem <-
function( dev  )
{
ans = .Call('R_cuDeviceTotalMem', as(dev, 'CUdevice'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_cuDeviceTotalMem')
ans
}


cuDeviceGetAttribute <-
function( attrib , dev  )
{
ans = .Call('R_cuDeviceGetAttribute', as(attrib, 'CUdevice_attribute'), as(dev, 'CUdevice'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_cuDeviceGetAttribute')
ans
}


cuDeviceCanAccessPeer <-
function( dev , peerDev  )
{
ans = .Call('R_cuDeviceCanAccessPeer', as(dev, 'CUdevice'), as(peerDev, 'CUdevice'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_cuDeviceCanAccessPeer')
ans
}
