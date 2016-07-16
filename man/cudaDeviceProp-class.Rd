\name{cudaDeviceProp-class}
\Rdversion{1.1}
\docType{class}
\alias{cudaDeviceProp-class}
\alias{cudaDevicePropPtr-class}

\alias{$,cudaDevicePropPtr-method}
\alias{$<-,cudaDevicePropPtr-method}
\alias{[[,cudaDevicePropPtr,ANY,ANY-method}
\alias{names,cudaDevicePropPtr-method}

\title{Class \code{"cudaDeviceProp"}}
\description{
  These are machine generated from reading the header files
  of the CUDA SDK using the \code{RCIndex} package.
}
\section{Objects from the Class}{
Objects can be created by calls of the form \code{new("cudaDeviceProp",
  ...)}.
However, they are typically created within native code
via calls to functions such as \code{\link{getDeviceProperties}}.
}

\section{Slots}{
  \describe{
    \item{\code{name}:}{Object of class \code{"character"}  }
    \item{\code{totalGlobalMem}:}{Object of class \code{"numeric"}  }
    \item{\code{sharedMemPerBlock}:}{Object of class \code{"numeric"}  }
    \item{\code{regsPerBlock}:}{Object of class \code{"integer"}  }
    \item{\code{warpSize}:}{Object of class \code{"integer"}  }
    \item{\code{memPitch}:}{Object of class \code{"numeric"}  }
    \item{\code{maxThreadsPerBlock}:}{Object of class \code{"integer"}  }
    \item{\code{maxThreadsDim}:}{Object of class \code{"integer"}  }
    \item{\code{maxGridSize}:}{Object of class \code{"integer"}  }
    \item{\code{clockRate}:}{Object of class \code{"integer"}  }
    \item{\code{totalConstMem}:}{Object of class \code{"numeric"}  }
    \item{\code{major}:}{Object of class \code{"integer"}  }
    \item{\code{minor}:}{Object of class \code{"integer"}  }
    \item{\code{textureAlignment}:}{Object of class \code{"numeric"}  }
    \item{\code{texturePitchAlignment}:}{Object of class \code{"numeric"}  }
    \item{\code{deviceOverlap}:}{Object of class \code{"integer"}  }
    \item{\code{multiProcessorCount}:}{Object of class \code{"integer"}  }
    \item{\code{kernelExecTimeoutEnabled}:}{Object of class \code{"integer"}  }
    \item{\code{integrated}:}{Object of class \code{"integer"}  }
    \item{\code{canMapHostMemory}:}{Object of class \code{"integer"}  }
    \item{\code{computeMode}:}{Object of class \code{"integer"}  }
    \item{\code{maxTexture1D}:}{Object of class \code{"integer"}  }
    \item{\code{maxTexture1DMipmap}:}{Object of class \code{"integer"}  }
    \item{\code{maxTexture1DLinear}:}{Object of class \code{"integer"}  }
    \item{\code{maxTexture2D}:}{Object of class \code{"integer"}  }
    \item{\code{maxTexture2DMipmap}:}{Object of class \code{"integer"}  }
    \item{\code{maxTexture2DLinear}:}{Object of class \code{"integer"}  }
    \item{\code{maxTexture2DGather}:}{Object of class \code{"integer"}  }
    \item{\code{maxTexture3D}:}{Object of class \code{"integer"}  }
    \item{\code{maxTextureCubemap}:}{Object of class \code{"integer"}  }
    \item{\code{maxTexture1DLayered}:}{Object of class \code{"integer"}  }
    \item{\code{maxTexture2DLayered}:}{Object of class \code{"integer"}  }
    \item{\code{maxTextureCubemapLayered}:}{Object of class \code{"integer"}  }
    \item{\code{maxSurface1D}:}{Object of class \code{"integer"}  }
    \item{\code{maxSurface2D}:}{Object of class \code{"integer"}  }
    \item{\code{maxSurface3D}:}{Object of class \code{"integer"}  }
    \item{\code{maxSurface1DLayered}:}{Object of class \code{"integer"}  }
    \item{\code{maxSurface2DLayered}:}{Object of class \code{"integer"}  }
    \item{\code{maxSurfaceCubemap}:}{Object of class \code{"integer"}  }
    \item{\code{maxSurfaceCubemapLayered}:}{Object of class \code{"integer"}  }
    \item{\code{surfaceAlignment}:}{Object of class \code{"numeric"}  }
    \item{\code{concurrentKernels}:}{Object of class \code{"integer"}  }
    \item{\code{ECCEnabled}:}{Object of class \code{"integer"}  }
    \item{\code{pciBusID}:}{Object of class \code{"integer"}  }
    \item{\code{pciDeviceID}:}{Object of class \code{"integer"}  }
    \item{\code{pciDomainID}:}{Object of class \code{"integer"}  }
    \item{\code{tccDriver}:}{Object of class \code{"integer"}  }
    \item{\code{asyncEngineCount}:}{Object of class \code{"integer"}  }
    \item{\code{unifiedAddressing}:}{Object of class \code{"integer"}  }
    \item{\code{memoryClockRate}:}{Object of class \code{"integer"}  }
    \item{\code{memoryBusWidth}:}{Object of class \code{"integer"}  }
    \item{\code{l2CacheSize}:}{Object of class \code{"integer"}  }
    \item{\code{maxThreadsPerMultiProcessor}:}{Object of class \code{"integer"}  }
  }
}
\section{Extends}{
Class \code{"\linkS4class{CStruct}"}, directly.
}
\section{Methods}{
  No methods defined with class "cudaDeviceProp" in the signature.
  For the pointer version, there are methods for accessing and setting fields.
}
\references{
\url{http://docs.nvidia.com/cuda/cuda-runtime-api/structcudaDeviceProp.html#structcudaDeviceProp}
}
\author{
Duncan Temple Lang
}

\seealso{
\code{\link{getDeviceProperties}}
}
\examples{
if(getNumDevices() > 0)  {
  info = getDeviceProperties()
  info
}
}
\keyword{classes}
