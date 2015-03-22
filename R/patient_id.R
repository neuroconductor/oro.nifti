#' @name patient_id
#' @title Extract Image patient_id attribute
#' @docType methods 
#' @param object is an object of class \code{nifti} or \code{anlz}
#' @param value Value to assign to patient_id 
#' @description Methods that act on the ``patient_id'' in the NIfTI/ANALYZE header.
#' @rdname patient_id-methods
#' @aliases patient_id-methods 
#' @aliases patient_id
#' @export
#'
#' @export
setGeneric("patient_id", function(object) standardGeneric("patient_id"))

#' @name patient_id
#' @rdname patient_id-methods
#' @aliases patient_id,nifti-method
#' @export
setMethod("patient_id", "nifti", function(object) { object@"patient_id" })

#' @name patient_id
#' @rdname patient_id-methods
#' @aliases patient_id,anlz-method
#' @export
setMethod("patient_id", "anlz", function(object) { object@"patient_id" })


#' @name patient_id
#' @rdname patient_id-methods
#' @aliases patient_id<- 
#' @export
setGeneric("patient_id<-", function(object, value) { standardGeneric("patient_id<-") })

#' @name patient_id
#' @rdname patient_id-methods
#' @aliases patient_id<-,nifti-method
#' @export
setMethod("patient_id<-", 
          signature(object="nifti"), 
          function(object, value) { 
            if ( patient_id %in% slotNames(object) ){
              object@"patient_id" <- value
              audit.trail(object) <-
                niftiAuditTrailEvent(object, "modification", match.call(),
                                     paste("patient_id <-", value))               
            } else {
              warning("patient_id is not in slotNames of object")
            }                       
            return(object)
          })

#' @name patient_id
#' @rdname patient_id-methods
#' @aliases patient_id<-,anlz-method
#' @export
setMethod("patient_id<-", 
          signature(object="anlz"), 
          function(object, value) { 
            if ( patient_id %in% slotNames(object) ){
              object@"patient_id" <- value
            } else {
              warning("patient_id is not in slotNames of object")
            }
            return(object)
          })

