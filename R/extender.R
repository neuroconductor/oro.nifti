#' @name extender
#' @title Extract NIfTI 3D Image extender attribute
#' @docType methods 
#' @param object is an object of class \code{nifti}
#' @param value Value to assign to extender 
#' @description Methods that act on the ``extender'' in the NIfTI header.
#' @rdname extender-methods
#' @aliases extender-methods 
#' @aliases extender
#' @export
#'
#' @export
setGeneric("extender", function(object) standardGeneric("extender"))

#' @name extender
#' @rdname extender-methods
#' @aliases extender,nifti-method
#' @export
setMethod("extender", "nifti", function(object) { object@"extender" })

#' @name extender
#' @rdname extender-methods
#' @aliases extender,anlz-method
#' @export
setMethod("extender", "anlz", function(object) { object@"extender" })


#' @name extender
#' @rdname extender-methods
#' @aliases extender<- 
#' @export
setGeneric("extender<-", function(object, value) { standardGeneric("extender<-") })

#' @name extender
#' @rdname extender-methods
#' @aliases extender<-,nifti-method
#' @export
setMethod("extender<-", 
          signature(object="nifti"), 
          function(object, value) { 
            object@"extender" <- value 
            audit.trail(object) <-
              niftiAuditTrailEvent(object, "modification", match.call(),
                                   paste("extender <-", value))            
            return(object)
          })

#' @name extender
#' @rdname extender-methods
#' @aliases extender<-,anlz-method
#' @export
setMethod("extender<-", 
          signature(object="anlz"), 
          function(object, value) { 
            object@"extender" <- value         
            return(object)
          })

