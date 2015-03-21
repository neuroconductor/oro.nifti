#' @name slice_duration
#' @title Extract NIfTI 3D Image slice_duration attribute
#' @docType methods 
#' @param object is an object of class \code{nifti}
#' @param value Value to assign to slice_duration 
#' @description Methods that act on the ``slice_duration'' in the NIfTI header.
#' @rdname slice_duration-methods
#' @aliases slice_duration-methods 
#' @aliases slice_duration
#' @export
#'
#' @export
setGeneric("slice_duration", function(object) standardGeneric("slice_duration"))

#' @name slice_duration
#' @rdname slice_duration-methods
#' @aliases slice_duration,nifti-method
#' @export
setMethod("slice_duration", "nifti", function(object) { object@"slice_duration" })

#' @name slice_duration
#' @rdname slice_duration-methods
#' @aliases slice_duration,anlz-method
#' @export
setMethod("slice_duration", "anlz", function(object) { object@"slice_duration" })


#' @name slice_duration
#' @rdname slice_duration-methods
#' @aliases slice_duration<- 
#' @export
setGeneric("slice_duration<-", function(object, value) { standardGeneric("slice_duration<-") })

#' @name slice_duration
#' @rdname slice_duration-methods
#' @aliases slice_duration<-,nifti-method
#' @export
setMethod("slice_duration<-", 
          signature(object="nifti"), 
          function(object, value) { 
            object@"slice_duration" <- value 
            audit.trail(object) <-
              niftiAuditTrailEvent(object, "modification", match.call(),
                                   paste("slice_duration <-", value))            
            return(object)
          })

#' @name slice_duration
#' @rdname slice_duration-methods
#' @aliases slice_duration<-,anlz-method
#' @export
setMethod("slice_duration<-", 
          signature(object="anlz"), 
          function(object, value) { 
            object@"slice_duration" <- value         
            return(object)
          })

