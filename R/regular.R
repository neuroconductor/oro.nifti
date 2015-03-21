#' @name regular
#' @title Extract NIfTI 3D Image regular attribute
#' @docType methods 
#' @param object is an object of class \code{nifti}
#' @param value Value to assign to regular 
#' @description Methods that act on the ``regular'' in the NIfTI header.
#' @rdname regular-methods
#' @aliases regular-methods 
#' @aliases regular
#' @export
#'
#' @export
setGeneric("regular", function(object) standardGeneric("regular"))

#' @name regular
#' @rdname regular-methods
#' @aliases regular,nifti-method
#' @export
setMethod("regular", "nifti", function(object) { object@"regular" })

#' @name regular
#' @rdname regular-methods
#' @aliases regular,anlz-method
#' @export
setMethod("regular", "anlz", function(object) { object@"regular" })


#' @name regular
#' @rdname regular-methods
#' @aliases regular<- 
#' @export
setGeneric("regular<-", function(object, value) { standardGeneric("regular<-") })

#' @name regular
#' @rdname regular-methods
#' @aliases regular<-,nifti-method
#' @export
setMethod("regular<-", 
          signature(object="nifti"), 
          function(object, value) { 
            object@"regular" <- value 
            audit.trail(object) <-
              niftiAuditTrailEvent(object, "modification", match.call(),
                                   paste("regular <-", value))            
            return(object)
          })

#' @name regular
#' @rdname regular-methods
#' @aliases regular<-,anlz-method
#' @export
setMethod("regular<-", 
          signature(object="anlz"), 
          function(object, value) { 
            object@"regular" <- value 
            audit.trail(object) <-
              niftiAuditTrailEvent(object, "modification", match.call(),
                                   paste("regular <-", value))            
            return(object)
          })

