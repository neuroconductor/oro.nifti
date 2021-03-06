% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/exp_date.R
\docType{methods}
\name{exp_date-methods}
\alias{exp_date-methods}
\alias{exp_date-methods,}
\alias{exp_date}
\alias{exp_date,anlz-method}
\alias{exp_date<-}
\alias{exp_date<-,anlz-method}
\title{Extract Image Attribute \code{exp_date}}
\usage{
exp_date(object)

\S4method{exp_date}{anlz}(object)

exp_date(object) <- value

\S4method{exp_date}{anlz}(object) <- value
}
\arguments{
\item{object}{is an object of class \code{nifti} or \code{anlz}.}

\item{value}{is the value to assign to the \code{exp_date} field.}
}
\description{
Methods that act on the \code{exp_date} field in the
NIfTI/ANALYZE header.
}
\details{
See documentation on the ANALYZE and/or NIfTI data standards for
more details.
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
