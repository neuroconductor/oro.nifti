#' @name session_error
#' @title Extract NIfTI 3D Image session_error attribute
#' @docType methods 
#' @param object is an object of class \code{nifti}
#' @param value Value to assign to session_error 
#' @description Methods that act on the ``session_error'' in the NIfTI header.
#' @rdname session_error-methods
#' @aliases session_error-methods 
#' @aliases session_error
#' @export
#'
#' @export
setGeneric("session_error", function(object) standardGeneric("session_error"))

#' @name session_error
#' @rdname session_error-methods
#' @aliases session_error,nifti-method
#' @export
setMethod("session_error", "nifti", function(object) { object@"session_error" })

#' @name session_error
#' @rdname session_error-methods
#' @aliases session_error,anlz-method
#' @export
setMethod("session_error", "anlz", function(object) { object@"session_error" })


#' @name session_error
#' @rdname session_error-methods
#' @aliases session_error<- 
#' @export
setGeneric("session_error<-", function(object, value) { standardGeneric("session_error<-") })

#' @name session_error
#' @rdname session_error-methods
#' @aliases session_error<-,nifti-method
#' @export
setMethod("session_error<-", 
          signature(object="nifti"), 
          function(object, value) { 
            object@"session_error" <- value 
            audit.trail(object) <-
              niftiAuditTrailEvent(object, "modification", match.call(),
                                   paste("session_error <-", value))            
            return(object)
          })

#' @name session_error
#' @rdname session_error-methods
#' @aliases session_error<-,anlz-method
#' @export
setMethod("session_error<-", 
          signature(object="anlz"), 
          function(object, value) { 
            object@"session_error" <- value         
            return(object)
          })

