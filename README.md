This RCUDA package provides a reasonably comprehensive interface to the CUDA SDK.
This allows one to work with a GPU via R code. We can invoke CUDA code on the GPU,
put data on the GPU and bring it back into R.  We have access to devices, contexts, streams, events,
and all of the CUDA concepts.

The package is now updated to work with CUDA SDK 7.5.

The package requires the  RAutoGenRunTime package to be installed.
This is available on github and omegahat.net and omegahat.ucdavis.edu.

You may need to set LD_LIBRARY_PATH - or DYLD_LIBRARY_PATH on OS X - 
to allow the system find the CUDA libraries. They are often installed in /usr/local/cuda/lib.

The code in the package is a mix of manually written and programmatically generated code.
The R code in TU/clang.R is used to generate the code and can be re-run for different versions
of CUDA.  TU/clang.R 


