\name{.cuda}
\alias{.cuda}
\alias{.gpu}
\title{Invoke a GPU kernel}
\description{
  This function allows us to launch a CUDA kernel
  on a GPU and so run many instances of the call
  in parallel.

  It is similar in spirit to \code{.C} in that it
  transfers control to outside of the R interpreter
  and also copies some of the results to memory
  and then back from memory in case the external code changes
  them. Unlike \code{.C}, the \code{outputs} parameter
  allows us to control what arguments are copied back
  to R so that we can avoid redundant computations.
  
  The function \code{.gpu} is another name for \code{.cuda}.
}
\usage{
.cuda(fun, ..., .args = list(...), gridDim, blockDim, sharedMemBytes = 0L, 
      stream = NULL, inplace = FALSE, outputs = logical(), 
      .gc = TRUE, gridBy = NULL, .async = !is.null(stream),
       .numericAsDouble = getOption("CUDA.useDouble", FALSE))
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{fun}{the CUDA kernel refernce, typically obtained from a
    pre-compiled PTX module using the \code{nvcc} compiler}
  \item{\dots}{zero or more arguments to the kernel}
  \item{.args}{the arguments to the kernel as a single list}
  \item{gridDim,blockDim}{an integer vec}
  \item{sharedMemBytes}{an integer value specifying the number of bytes
    that are shared between the ?.}
  \item{stream}{currently ignored. This corresponds to a CUDA stream and
  allows us to interleave computations on the GPU}
  \item{outputs}{an optional mechanism which serves as a means to index
    the results  of the computaations. Like the
    This works independently of the argument types. In other words,
   if some arguments are specified as R vectors and \code{outputs} is
   specified also, \code{outputs} is used to determine which of the
   arguments to copy back to the host and return.}
  \item{.gc}{a logical value which controls whether the R garbage
    collector is run before proceeding with the computations in this
    function.
  The reason for this is to ensure that any data allocated passively on
  the GPU in earlier calls is released so that we can allocate some of
  the arguments on the GPU, if appropriate and necessary.}
%  \item{.gpu}{currently ignored. This is intended to allow the caller to
%    specify the GPU device on a machine with more than one GPU device.
%    This will set the default device, establish a context before
%    launching the call.}
  \item{inplace}{currently ignored but intended to indicate which
    arguments are modified in place.}
  \item{gridBy}{a vector or a list of vectors used to determine how many 
    threads should be run and hence compute the grid dimensions to use.
    This is a convenience parameter that, for common but simple cases, allows callers to 
    identify what we are vectorizing on the GPU. The function then determines
    the grid and block dimensions to use.
 }
\item{.async}{a logical value that, if \code{TRUE}, 
  causes the function to return immediately after launching the kernel.
 This allows the GPU to continue working while we can do work on the CPU within the 
 R session. We can then call \code{\link{cudaStreamSynchronize}}, 
 \code{\link{cudaDeviceSynchronize}}, \code{\link{cudaEventSynchronize}}
 or \code{\link{cuCtxSynchronize}} to
 wait  until all of the operations have been completed.
  }
  \item{.numericAsDouble}{a logical value that controls whether numeric
  vectors should be mapped to the GPU as arrays of  \code{double} 
  or \code{float} elements. By default, they are currently mapped as
  \code{float} arrays.
  \code{.numericAsDouble} can be a logical vector
  with an element for each of the multi-element vectors in the arguments
  for the kernel.
  }
}
\value{
  The result depends on \code{outputs} and the actual values of the
  the arguments to the kernel in \code{\dots} or \code{.args}.
  If the arguments are all scalars and/or pointers to GPU allocated
  memory, the result is just the success status.
  If any of the inputs are vectors (not scalars), only they are
  returned, copying their potentially modified contents from the GPU.

  If \code{outputs} is specified, only those inputs are returned.
  If there is only a single argument returned, it is returned directly
  and not as a list.

  All RCUDA functions  may raise an error and the class of this is
  the name of the error.  This can be caught with \code{tryCatch}.

  If \code{.async} is \code{TRUE}, the function returns the objects which
  were copied from \R{} to the GPU by this function. This allows the caller
  to retrieve the results after synchronizing with the GPU.
}
\references{
 \url{http://developer.download.nvidia.com/compute/cuda/4_1/rel/toolkit/docs/online/group__CUDA__EXEC_gb8f3dc3031b40da29d5f9a7139e52e15.html}
}
\author{
Duncan Temple Lang
}
\note{
  It is important to determine whether to pre-allocate memory and data
  on the GPU for reuse in subsequent calls or to leave \code{.cuda} to
  marshall this for us and incur that one-time expense.
}

\seealso{
 \code{\link{cudaAlloc}},  \code{\link{copyToDevice}}, \code{\link{copyFromDevice}}
}
\examples{

if(getNumDevices() > 0) {

  ptx = system.file("sampleKernels", "dnormOutput.ptx", package = "RCUDA")
  if(!file.exists(ptx))
    ptx = nvcc(system.file("sampleKernels", "dnormOutput.cu", package = "RCUDA"), "dnormOutput.ptx")

  m = loadModule(ptx)
  kernel = m$dnorm_kernel

  N = 1e6L
  x = rnorm(N)
  mu = .5
  sigma = 1.1

  ans = .cuda(kernel, x, N, mu, sigma, numeric(N),
               gridDim = c(64L, 32L), blockDim = 512L, outputs = 5)

  ans = .cuda(kernel, x, N, mu, sigma, out = numeric(N),
               gridDim = c(64L, 32L), blockDim = 512L, outputs = "out")

  head(ans)
  dnorm(x[1:5], mu, sigma)

  summary(abs(ans - dnorm(x, mu, sigma)))

# Using gridBy

  ans = .cuda(kernel, x, N, mu, sigma, numeric(N),
                gridBy = x, outputs = 5)
  ans = .cuda(kernel, x, N, mu, sigma, numeric(N),
                gridBy = N, outputs = 5)

  # explicitly allocating data on the GPU and passing these as inputs.
  cx = copyToDevice(x)
  vals = cudaAlloc(N, elType = "numeric")
  .cuda(kernel, cx, N, mu, sigma, vals, gridDim = c(64L, 32L), blockDim = 512L)

  max(vals[])
}
}
\keyword{programming}
\concept{GPU}
