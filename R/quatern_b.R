#' @name quatern_b
#' @title Extract Image quatern_b attribute
#' @docType methods 
#' @param object is an object of class \code{nifti} or \code{anlz}
#' @param value Value to assign to quatern_b 
#' @description Methods that act on the ``quatern_b'' in the NIfTI/ANALYZE header.
#' @rdname quatern_b-methods
#' @aliases quatern_b-methods 
#' @aliases quatern_b
#' @export
#'
#' @export
setGeneric("quatern_b", function(object) standardGeneric("quatern_b"))

#' @name quatern_b
#' @rdname quatern_b-methods
#' @aliases quatern_b,nifti-method
#' @export
setMethod("quatern_b", "nifti", function(object) { object@"quatern_b" })

#' @name quatern_b
#' @rdname quatern_b-methods
#' @aliases quatern_b,anlz-method
#' @export
setMethod("quatern_b", "anlz", function(object) { object@"quatern_b" })


#' @name quatern_b
#' @rdname quatern_b-methods
#' @aliases quatern_b<- 
#' @export
setGeneric("quatern_b<-", function(object, value) { standardGeneric("quatern_b<-") })

#' @name quatern_b
#' @rdname quatern_b-methods
#' @aliases quatern_b<-,nifti-method
#' @export
setMethod("quatern_b<-", 
          signature(object="nifti"), 
          function(object, value) { 
            if ( quatern_b %in% slotNames(object) ){
              object@"quatern_b" <- value
              audit.trail(object) <-
                niftiAuditTrailEvent(object, "modification", match.call(),
                                     paste("quatern_b <-", value))               
            } else {
              warning("quatern_b is not in slotNames of object")
            }                       
            return(object)
          })

#' @name quatern_b
#' @rdname quatern_b-methods
#' @aliases quatern_b<-,anlz-method
#' @export
setMethod("quatern_b<-", 
          signature(object="anlz"), 
          function(object, value) { 
            if ( quatern_b %in% slotNames(object) ){
              object@"quatern_b" <- value
            } else {
              warning("quatern_b is not in slotNames of object")
            }
            return(object)
          })

