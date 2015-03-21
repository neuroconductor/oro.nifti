#' @name magic
#' @title Extract NIfTI 3D Image magic attribute
#' @docType methods 
#' @param object is an object of class \code{nifti}
#' @param value Value to assign to magic 
#' @description Methods that act on the ``magic'' in the NIfTI header.
#' @rdname magic-methods
#' @aliases magic-methods 
#' @aliases magic
#' @export
#'
#' @export
setGeneric("magic", function(object) standardGeneric("magic"))

#' @name magic
#' @rdname magic-methods
#' @aliases magic,nifti-method
#' @export
setMethod("magic", "nifti", function(object) { object@"magic" })

#' @name magic
#' @rdname magic-methods
#' @aliases magic,anlz-method
#' @export
setMethod("magic", "anlz", function(object) { object@"magic" })


#' @name magic
#' @rdname magic-methods
#' @aliases magic<- 
#' @export
setGeneric("magic<-", function(object, value) { standardGeneric("magic<-") })

#' @name magic
#' @rdname magic-methods
#' @aliases magic<-,nifti-method
#' @export
setMethod("magic<-", 
          signature(object="nifti"), 
          function(object, value) { 
            object@"magic" <- value 
            audit.trail(object) <-
              niftiAuditTrailEvent(object, "modification", match.call(),
                                   paste("magic <-", value))            
            return(object)
          })

#' @name magic
#' @rdname magic-methods
#' @aliases magic<-,anlz-method
#' @export
setMethod("magic<-", 
          signature(object="anlz"), 
          function(object, value) { 
            object@"magic" <- value         
            return(object)
          })

