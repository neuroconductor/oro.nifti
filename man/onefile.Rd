% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/onefile.R
\name{onefile}
\alias{onefile}
\title{Creates the \code{onefile} Specification for NIfTI}
\usage{
onefile(img)
}
\arguments{
\item{img}{is a \code{nifti}-class object.}
}
\value{
Object of class \code{nifti}.
}
\description{
Changes the \code{magic} and \code{vox_offset} slots to be
consistent with the onefile option in \code{\link{writeNIfTI}}.  As of 
version 0.4.0, \code{oro.nifti} did not support the \code{"ni1"} magic type 
for output.
}
\references{
NIfTI-1\cr \url{http://nifti.nimh.nih.gov/}
}
\author{
John Muschelli \email{muschellij2@gmail.com}
}
