#' @name quatern_d
#' @title Extract Image quatern_d attribute
#' @docType methods 
#' @param object is an object of class \code{nifti} or \code{anlz}
#' @param value Value to assign to quatern_d 
#' @description Methods that act on the ``quatern_d'' in the NIfTI/ANALYZE header.
#' @rdname quatern_d-methods
#' @aliases quatern_d-methods 
#' @aliases quatern_d
#' @export
#'
#' @export
setGeneric("quatern_d", function(object) standardGeneric("quatern_d"))

#' @name quatern_d
#' @rdname quatern_d-methods
#' @aliases quatern_d,nifti-method
#' @export
setMethod("quatern_d", "nifti", function(object) { object@"quatern_d" })

#' @name quatern_d
#' @rdname quatern_d-methods
#' @aliases quatern_d,anlz-method
#' @export
setMethod("quatern_d", "anlz", function(object) { object@"quatern_d" })


#' @name quatern_d
#' @rdname quatern_d-methods
#' @aliases quatern_d<- 
#' @export
setGeneric("quatern_d<-", function(object, value) { standardGeneric("quatern_d<-") })

#' @name quatern_d
#' @rdname quatern_d-methods
#' @aliases quatern_d<-,nifti-method
#' @export
setMethod("quatern_d<-", 
          signature(object="nifti"), 
          function(object, value) { 
            if ( quatern_d %in% slotNames(object) ){
              object@"quatern_d" <- value
              audit.trail(object) <-
                niftiAuditTrailEvent(object, "modification", match.call(),
                                     paste("quatern_d <-", value))               
            } else {
              warning("quatern_d is not in slotNames of object")
            }                       
            return(object)
          })

#' @name quatern_d
#' @rdname quatern_d-methods
#' @aliases quatern_d<-,anlz-method
#' @export
setMethod("quatern_d<-", 
          signature(object="anlz"), 
          function(object, value) { 
            if ( quatern_d %in% slotNames(object) ){
              object@"quatern_d" <- value
            } else {
              warning("quatern_d is not in slotNames of object")
            }
            return(object)
          })

