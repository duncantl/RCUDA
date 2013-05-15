\name{profileCUDA}
\alias{profileCUDA}
\alias{cudaProfiler}
\alias{cudaStartProfiler}
\alias{cudaStopProfiler}
\alias{readCUDAProfile}

\alias{cudaCSV}
\alias{cudaKeyValuePair}
\alias{cudaOutputMode_tValues}

\title{Profiling functions for CUDA calls}
\description{
  These functions allow us to profile CUDA interactions
  and calls. We can profile an entire sequence of one or more
  R calls.  Alternatively, we can use more fine-grained control
  over what we profile by first creating a profiler and then
  starting and stopping it as we want.
  We can read the profiling results with \code{readCUDAProfile}
  although \code{profileCUDA} returns them for us.

  There are two possible formats for the profiling result file.
  One is a  CSV. The other is a \code{name=value} format.

  We can specify what to profile via a configuration file.
}
\usage{
profileCUDA(expr, file = tempfile(), ...)
cudaProfiler(file = tempfile(),
              config = getOption("CUDAProfilerConfig", system.file('prof.config', package = 'RCUDA')),
               format = "csv", start = TRUE)
cudaStartProfiler()
cudaStopProfiler()
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{expr}{the R expression or set of expressions to profile as a
    single block}
  \item{file}{the name of the file to which to write the profiling
    results. This defaults to a temporary file.}
  \item{\dots}{additional arguments passed to \code{cudaProfiler}. This
    includes the configuration file.}
  \item{config}{the name of a configuration file identifying what
    counters to store, i.e. the names of the columns of the data frame
    and what the profiler will record for each routine.}
  \item{format}{the format of the data the profiler will output.
    This is either CSV or key=value pairs. One can specify this with
    either of the   \code{cudaCSV} or \code{cudaKeyValuePair} constants,
    or use a string that identifies "CSV" or "KeyValue".  Any string
    that uniquely matches the name of either constant, using lower case
    matching will work.}
  \item{start}{a logical value that controls whether we also start the
  profiler immedialtey after creating it (\code{TRUE}) or not.}
}
\value{
 \code{profileCUDA} returns a data frame.
}
\references{
  \url{http://docs.nvidia.com/cuda/profiler-users-guide/index.html}
  
  A sample configuration file is available at
  \url{https://svn.ece.lsu.edu/svn/gp/cuda/matrix-mult/.cuda-profile-config}
}
\author{Duncan Temple Lang}

\seealso{\code{\link{.cuda}}}
\examples{
if(getNumDevices() > 0) {

 createContext()

 info = profileCUDA( {
     ptx = system.file("sampleKernels", "dnormOutput.ptx", package = "RCUDA")
     m = loadModule(ptx)
     kernel = m$dnorm_kernel

     N = 1e6L
     x = rnorm(N)

     ans = .cuda(kernel, x, N, .5, 1.5, numeric(N),
                  gridDim = c(64L, 32L), blockDim = 512L, outputs = "out")
   })

  info
}
}
\keyword{programming}
