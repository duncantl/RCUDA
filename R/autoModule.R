#include "RCUDA.h"


cuModuleLoad <-
function( fname  )
{
ans = .Call('R_cuModuleLoad', as(fname, 'character'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_cuModuleLoad')
ans
}


cuModuleLoadData <-
function( image  )
{
ans = .Call('R_cuModuleLoadData', as(image, 'void'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_cuModuleLoadData')
ans
}


cuModuleLoadFatBinary <-
function( fatCubin  )
{
ans = .Call('R_cuModuleLoadFatBinary', as(fatCubin, 'void'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_cuModuleLoadFatBinary')
ans
}


cuModuleUnload <-
function( hmod  )
{
ans = .Call('R_cuModuleUnload', as(hmod, 'CUmodule'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_cuModuleUnload')
ans
}


cuModuleGetFunction <-
function( hfunc , hmod , name  )
{
ans = .Call('R_cuModuleGetFunction', as(hfunc, 'CUfunction'), as(hmod, 'CUmodule'), as(name, 'character'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_cuModuleGetFunction')
ans
}


cuModuleGetGlobal <-
function( hmod , name  )
{
ans = .Call('R_cuModuleGetGlobal', as(hmod, 'CUmodule'), as(name, 'character'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_cuModuleGetGlobal')
ans
}


cuModuleGetTexRef <-
function( hmod , name  )
{
ans = .Call('R_cuModuleGetTexRef', as(hmod, 'CUmodule'), as(name, 'character'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_cuModuleGetTexRef')
ans
}


cuModuleGetSurfRef <-
function( hmod , name  )
{
ans = .Call('R_cuModuleGetSurfRef', as(hmod, 'CUmodule'), as(name, 'character'))
if(is(ans, 'CUresult') && ans != 0)
    raiseError(ans, 'R_cuModuleGetSurfRef')
ans
}
