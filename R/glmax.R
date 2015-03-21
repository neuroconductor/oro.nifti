#' @name glmax
#' @title Extract NIfTI 3D Image glmax attribute
#' @docType methods 
#' @param object is an object of class \code{nifti}
#' @param value Value to assign to glmax 
#' @description Methods that act on the ``glmax'' in the NIfTI header.
#' @rdname glmax-methods
#' @aliases glmax-methods 
#' @aliases glmax
#' @export
#'
#' @export
setGeneric("glmax", function(object) standardGeneric("glmax"))

#' @name glmax
#' @rdname glmax-methods
#' @aliases glmax,nifti-method
#' @export
setMethod("glmax", "nifti", function(object) { object@"glmax" })

#' @name glmax
#' @rdname glmax-methods
#' @aliases glmax,anlz-method
#' @export
setMethod("glmax", "anlz", function(object) { object@"glmax" })


#' @name glmax
#' @rdname glmax-methods
#' @aliases glmax<- 
#' @export
setGeneric("glmax<-", function(object, value) { standardGeneric("glmax<-") })

#' @name glmax
#' @rdname glmax-methods
#' @aliases glmax<-,nifti-method
#' @export
setMethod("glmax<-", 
          signature(object="nifti"), 
          function(object, value) { 
            object@"glmax" <- value 
            audit.trail(object) <-
              niftiAuditTrailEvent(object, "modification", match.call(),
                                   paste("glmax <-", value))            
            return(object)
          })

#' @name glmax
#' @rdname glmax-methods
#' @aliases glmax<-,anlz-method
#' @export
setMethod("glmax<-", 
          signature(object="anlz"), 
          function(object, value) { 
            object@"glmax" <- value         
            return(object)
          })

