#' @name dim_info-methods
#' @title Extract Image dim_info attribute
#' @docType methods 
#' @param object is an object of class \code{nifti} or \code{anlz}.
#' @param value is the value to assign to \code{dim_info}. 
#' @description Methods that act on the \code{dim_info} field in the 
#' NIfTI/ANALYZE header.
#' @rdname dim_info-methods
#' @aliases dim_info-methods 
#' @aliases dim_info
#'
#' @export
setGeneric("dim_info", function(object) standardGeneric("dim_info"))

#' @rdname dim_info-methods
#' @aliases dim_info,nifti-method
#' @export
setMethod("dim_info", "nifti", function(object) { object@"dim_info" })

#' @rdname dim_info-methods
#' @aliases dim_info,anlz-method
#' @export
setMethod("dim_info", "anlz", function(object) { object@"dim_info" })

#' @rdname dim_info-methods
#' @aliases dim_info<- 
#' @export
setGeneric("dim_info<-", function(object, value) { standardGeneric("dim_info<-") })

#' @rdname dim_info-methods
#' @aliases dim_info<-,nifti-method
#' @export
setMethod("dim_info<-", signature(object="nifti"), 
          function(object, value) { 
            if ( "dim_info" %in% slotNames(object) ){
              object@"dim_info" <- value
              audit.trail(object) <-
                niftiAuditTrailEvent(object, "modification", match.call(),
                                     paste("dim_info <-", value))               
            } else {
              warning("dim_info is not in slotNames of object")
            }                       
            return(object)
          })

#' @rdname dim_info-methods
#' @aliases dim_info<-,anlz-method
#' @export
setMethod("dim_info<-", signature(object="anlz"), 
          function(object, value) { 
            if ( "dim_info" %in% slotNames(object) ){
              object@"dim_info" <- value
            } else {
              warning("dim_info is not in slotNames of object")
            }
            return(object)
          })

#' @rdname dim_info-methods
#' @export
setGeneric("dim.info", function(object) standardGeneric("dim.info"))

#' @rdname dim_info-methods
#' @aliases dim.info,nifti-method
#' @export
setMethod("dim.info", "nifti", function(object) { object@"dim_info" })

#' @rdname dim_info-methods
#' @aliases dim.info,anlz-method
#' @export
setMethod("dim.info", "anlz", function(object) { object@"dim_info" })

#' @rdname dim_info-methods
#' @aliases dim.info<- 
#' @export
setGeneric("dim.info<-", function(object, value) { standardGeneric("dim.info<-") })

#' @rdname dim_info-methods
#' @aliases dim.info<-,nifti-method
#' @export
setMethod("dim.info<-", signature(object="nifti"), 
          function(object, value) { "dim_info<-"(object, value) })

#' @rdname dim_info-methods
#' @aliases dim.info<-,anlz-method
#' @export
setMethod("dim.info<-", signature(object="anlz"), 
          function(object, value) { "dim_info<-"(object, value) })
