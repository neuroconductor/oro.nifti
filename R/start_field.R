#' @name start_field
#' @title Extract Image start_field attribute
#' @docType methods 
#' @param object is an object of class \code{nifti} or \code{anlz}
#' @param value Value to assign to start_field 
#' @description Methods that act on the ``start_field'' in the NIfTI/ANALYZE header.
#' @rdname start_field-methods
#' @aliases start_field-methods 
#' @aliases start_field
#' @export
#'
#' @export
setGeneric("start_field", function(object) standardGeneric("start_field"))

#' @name start_field
#' @rdname start_field-methods
#' @aliases start_field,nifti-method
#' @export
setMethod("start_field", "nifti", function(object) { object@"start_field" })

#' @name start_field
#' @rdname start_field-methods
#' @aliases start_field,anlz-method
#' @export
setMethod("start_field", "anlz", function(object) { object@"start_field" })


#' @name start_field
#' @rdname start_field-methods
#' @aliases start_field<- 
#' @export
setGeneric("start_field<-", function(object, value) { standardGeneric("start_field<-") })

#' @name start_field
#' @rdname start_field-methods
#' @aliases start_field<-,nifti-method
#' @export
setMethod("start_field<-", 
          signature(object="nifti"), 
          function(object, value) { 
            if ( start_field %in% slotNames(object) ){
              object@"start_field" <- value
              audit.trail(object) <-
                niftiAuditTrailEvent(object, "modification", match.call(),
                                     paste("start_field <-", value))               
            } else {
              warning("start_field is not in slotNames of object")
            }                       
            return(object)
          })

#' @name start_field
#' @rdname start_field-methods
#' @aliases start_field<-,anlz-method
#' @export
setMethod("start_field<-", 
          signature(object="anlz"), 
          function(object, value) { 
            if ( start_field %in% slotNames(object) ){
              object@"start_field" <- value
            } else {
              warning("start_field is not in slotNames of object")
            }
            return(object)
          })

