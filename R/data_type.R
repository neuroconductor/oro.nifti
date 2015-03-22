#' @name data_type
#' @title Extract Image data_type attribute
#' @docType methods 
#' @param object is an object of class \code{nifti} or \code{anlz}
#' @param value Value to assign to data_type 
#' @description Methods that act on the ``data_type'' in the NIfTI/ANALYZE header.
#' @rdname data_type-methods
#' @aliases data_type-methods 
#' @aliases data_type
#' @export
#'
#' @export
setGeneric("data_type", function(object) standardGeneric("data_type"))

#' @name data_type
#' @rdname data_type-methods
#' @aliases data_type,nifti-method
#' @export
setMethod("data_type", "nifti", function(object) { object@"data_type" })

#' @name data_type
#' @rdname data_type-methods
#' @aliases data_type,anlz-method
#' @export
setMethod("data_type", "anlz", function(object) { object@"data_type" })


#' @name data_type
#' @rdname data_type-methods
#' @aliases data_type<- 
#' @export
setGeneric("data_type<-", function(object, value) { standardGeneric("data_type<-") })

#' @name data_type
#' @rdname data_type-methods
#' @aliases data_type<-,nifti-method
#' @export
setMethod("data_type<-", 
          signature(object="nifti"), 
          function(object, value) { 
            if ( data_type %in% slotNames(object) ){
              object@"data_type" <- value
              audit.trail(object) <-
                niftiAuditTrailEvent(object, "modification", match.call(),
                                     paste("data_type <-", value))               
            } else {
              warning("data_type is not in slotNames of object")
            }                       
            return(object)
          })

#' @name data_type
#' @rdname data_type-methods
#' @aliases data_type<-,anlz-method
#' @export
setMethod("data_type<-", 
          signature(object="anlz"), 
          function(object, value) { 
            if ( data_type %in% slotNames(object) ){
              object@"data_type" <- value
            } else {
              warning("data_type is not in slotNames of object")
            }
            return(object)
          })

