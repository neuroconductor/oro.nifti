% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/slice_end.R, R/zzz_niftiImage.R
\docType{methods}
\name{slice_end-methods}
\alias{slice_end-methods}
\alias{slice_end-methods,}
\alias{slice_end}
\alias{slice_end,nifti-method}
\alias{slice_end<-}
\alias{slice_end<-,nifti-method}
\alias{slice.end}
\alias{slice.end,nifti-method}
\alias{slice.end<-}
\alias{slice.end<-,nifti-method}
\alias{slice_end,niftiImage-method}
\alias{slice_end<-,niftiImage-method}
\alias{slice.end,niftiImage-method}
\alias{slice.end<-,niftiImage-method}
\title{Extract Image Attribute \code{slice_end}}
\usage{
slice_end(object)

\S4method{slice_end}{nifti}(object)

slice_end(object) <- value

\S4method{slice_end}{nifti}(object) <- value

slice.end(object)

\S4method{slice.end}{nifti}(object)

slice.end(object) <- value

\S4method{slice.end}{nifti}(object) <- value

\S4method{slice_end}{niftiImage}(object)

\S4method{slice_end}{niftiImage}(object) <- value

\S4method{slice.end}{niftiImage}(object)

\S4method{slice.end}{niftiImage}(object) <- value
}
\arguments{
\item{object}{is an object of class \code{nifti} or \code{anlz}.}

\item{value}{is the value to assign to the \code{slice_end} field.}
}
\description{
Methods that act on the \code{slice_end} field in the
NIfTI/ANALYZE header.
}
\details{
See documentation on the ANALYZE and/or NIfTI data standards for
more details.
}
\examples{
file = system.file("extdata", "example.nii.gz", package = "RNifti")
img = RNifti::readNifti(file)
slice_end(img)
slice_end(img) = 4
stopifnot(slice_end(img) == 4) 
slice.end(img)
slice.end(img) = 0
}
\references{
ANALYZE 7.5\cr
\url{http://eeg.sourceforge.net/ANALYZE75.pdf}\cr
NIfTI-1\cr
\url{http://nifti.nimh.nih.gov/}
}
\author{
John Muschelli \email{muschellij2@gmail.com},\cr
Brandon Whitcher \email{bwhitcher@gmail.com}
}
