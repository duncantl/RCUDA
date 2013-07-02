# Generated programmatically at 2013-07-02 13:51:14 


cuModuleLoad <-
function( fname )
{
    ans = .Call('R_auto_cuModuleLoad', as(fname, 'character'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_auto_cuModuleLoad')
    ans
}


cuModuleLoadData <-
function( image )
{
    ans = .Call('R_auto_cuModuleLoadData', as(image, 'voidPtr'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_auto_cuModuleLoadData')
    ans
}


cuModuleLoadFatBinary <-
function( fatCubin )
{
    ans = .Call('R_auto_cuModuleLoadFatBinary', as(fatCubin, 'voidPtr'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_auto_cuModuleLoadFatBinary')
    ans
}


cuModuleUnload <-
function( hmod )
{
    ans = .Call('R_auto_cuModuleUnload', as(hmod, 'CUmodule'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_auto_cuModuleUnload')
    ans
}


cuModuleGetFunction <-
function( hfunc, hmod, name )
{
    ans = .Call('R_auto_cuModuleGetFunction', as(hfunc, 'CUfunctionPtr'), as(hmod, 'CUmodule'), as(name, 'character'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_auto_cuModuleGetFunction')
    ans
}


cuModuleGetGlobal <-
function( hmod, name )
{
    ans = .Call('R_auto_cuModuleGetGlobal', as(hmod, 'CUmodule'), as(name, 'character'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_auto_cuModuleGetGlobal')
    ans
}


cuModuleGetTexRef <-
function( hmod, name )
{
    ans = .Call('R_auto_cuModuleGetTexRef', as(hmod, 'CUmodule'), as(name, 'character'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_auto_cuModuleGetTexRef')
    ans
}


cuModuleGetSurfRef <-
function( hmod, name )
{
    ans = .Call('R_auto_cuModuleGetSurfRef', as(hmod, 'CUmodule'), as(name, 'character'))
    if(is(ans, 'CUresult') && ans != 0)
        raiseError(ans, 'R_auto_cuModuleGetSurfRef')
    ans
}
