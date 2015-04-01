#' as.nifti
#' 
#' Internal function that converts multidimensional arrays to NIfTI class
#' objects.
#' 
#' 
#' @aliases as.anlz as.nifti
#' @param from is the object to be converted.
#' @param value is the \code{nifti} class object to use as a template for
#' various ANALYZE/NIfTI header information.
#' @param verbose is a logical variable (default = \code{FALSE}) that allows
#' text-based feedback during execution of the function.
#' @return An object of class \code{anlz} or \code{nifti}.
#' @author Andrew Thornton \email{zeripath@@users.sourceforge.net} and Brandon
#' Whitcher \email{bwhitcher@@gmail.com}