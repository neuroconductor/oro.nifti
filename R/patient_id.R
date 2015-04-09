#' @name patient_id-methods
#' @title Extract Image Attribute \code{patient_id}
#' @docType methods 
#' @param object is an object of class \code{nifti} or \code{anlz}.
#' @param value is the value to assign to the \code{patient_id} field.  
#' @description Methods that act on the \code{patient_id} field in the
#' NIfTI/ANALYZE header.
#' @rdname patient_id-methods
#' @aliases patient_id-methods, patient_id
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
setGeneric("patient_id", function(object) standardGeneric("patient_id"))

#' @rdname patient_id-methods
#' @aliases patient_id,nifti-method
#' @export
setMethod("patient_id", "nifti", function(object) { object@"patient_id" })

#' @rdname patient_id-methods
#' @aliases patient_id,anlz-method
#' @export
setMethod("patient_id", "anlz", function(object) { object@"patient_id" })


#' @rdname patient_id-methods
#' @aliases patient_id<- 
#' @export
setGeneric("patient_id<-", function(object, value) { standardGeneric("patient_id<-") })

#' @rdname patient_id-methods
#' @aliases patient_id<-,nifti-method
#' @export
setMethod("patient_id<-", 
          signature(object="nifti"), 
          function(object, value) { 
            if ( "patient_id" %in% slotNames(object) ){
              object@"patient_id" <- value
              audit.trail(object) <-
                niftiAuditTrailEvent(object, "modification", match.call(),
                                     paste("patient_id <-", value))               
            } else {
              warning("patient_id is not in slotNames of object")
            }                       
            return(object)
          })

#' @rdname patient_id-methods
#' @aliases patient_id<-,anlz-method
#' @export
setMethod("patient_id<-", 
          signature(object="anlz"), 
          function(object, value) { 
            if ( "patient_id" %in% slotNames(object) ){
              object@"patient_id" <- value
            } else {
              warning("patient_id is not in slotNames of object")
            }
            return(object)
          })

#' @rdname patient_id-methods
#' @aliases patient.id,nifti-method
#' @export
setGeneric("patient.id", function(object) standardGeneric("patient.id"))

#' @rdname patient_id-methods
#' @aliases patient.id,nifti-method
#' @export
setMethod("patient.id", "nifti", function(object) { object@"patient_id" })

#' @rdname patient_id-methods
#' @aliases patient.id,anlz-method
#' @export
setMethod("patient.id", "anlz", function(object) { object@"patient_id" })


#' @rdname patient_id-methods
#' @aliases patient.id<- 
#' @export
setGeneric("patient.id<-", function(object, value) { standardGeneric("patient.id<-") })

#' @rdname patient_id-methods
#' @aliases patient.id<-,nifti-method
#' @export
setMethod("patient.id<-", 
          signature(object="nifti"), 
          function(object, value) { 
            if ( "patient_id" %in% slotNames(object) ){
              object@"patient_id" <- value
              audit.trail(object) <-
                niftiAuditTrailEvent(object, "modification", match.call(),
                                     paste("patient_id <-", value))               
            } else {
              warning("patient_id is not in slotNames of object")
            }                       
            return(object)
          })

#' @rdname patient_id-methods
#' @aliases patient.id<-,anlz-method
#' @export
setMethod("patient.id<-", 
          signature(object="anlz"), 
          function(object, value) { 
            if ( "patient_id" %in% slotNames(object) ){
              object@"patient_id" <- value
            } else {
              warning("patient_id is not in slotNames of object")
            }
            return(object)
          })
