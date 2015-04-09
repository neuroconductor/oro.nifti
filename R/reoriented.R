#' @name reoriented-methods
#' @title Extract Image Attribute \code{reoriented}
#' @docType methods 
#' @param object is an object of class \code{nifti} or \code{anlz}.
#' @param value is the value to assign to the \code{reoriented} field.  
#' @description Methods that act on the \code{reoriented} field in the
#' NIfTI/ANALYZE header.
#' @rdname reoriented-methods
#' @aliases reoriented-methods, reoriented
#' @details See documentation on the ANALYZE and/or NIfTI data standards for
#' more details.
#' @author John Muschelli \email{muschellij2@@gmail.com},\cr
#' Brandon Whitcher \email{bwhitcher@@gmail.com}
#' @references
#' ANALYZE 7.5\cr
#' \url{http://www.mayo.edu/bir/PDF/ANALYZE75.pdf}\cr
#' NIfTI-1\cr
#' \url{http://nifti.nimh.nih.gov/}
#'
#' @export
setGeneric("reoriented", function(object) standardGeneric("reoriented"))

#' @rdname reoriented-methods
#' @aliases reoriented,nifti-method
#' @export
setMethod("reoriented", "nifti", function(object) { object@"reoriented" })

#' @rdname reoriented-methods
#' @aliases reoriented,anlz-method
#' @export
setMethod("reoriented", "anlz", function(object) { object@"reoriented" })


#' @rdname reoriented-methods
#' @aliases reoriented<- 
#' @export
setGeneric("reoriented<-", function(object, value) { standardGeneric("reoriented<-") })

#' @rdname reoriented-methods
#' @aliases reoriented<-,nifti-method
#' @export
setMethod("reoriented<-", 
          signature(object="nifti"), 
          function(object, value) { 
            if ( "reoriented" %in% slotNames(object) ){
              object@"reoriented" <- value
              audit.trail(object) <-
                niftiAuditTrailEvent(object, "modification", match.call(),
                                     paste("reoriented <-", value))               
            } else {
              warning("reoriented is not in slotNames of object")
            }                       
            return(object)
          })

#' @rdname reoriented-methods
#' @aliases reoriented<-,anlz-method
#' @export
setMethod("reoriented<-", 
          signature(object="anlz"), 
          function(object, value) { 
            if ( "reoriented" %in% slotNames(object) ){
              object@"reoriented" <- value
            } else {
              warning("reoriented is not in slotNames of object")
            }
            return(object)
          })
