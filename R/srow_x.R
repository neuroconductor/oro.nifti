#' @name srow_x
#' @title Extract NIfTI 3D Image srow_x attribute
#' @docType methods 
#' @param object is an object of class \code{nifti}
#' @param value Value to assign to srow_x 
#' @description Methods that act on the ``srow_x'' in the NIfTI header.
#' @rdname srow_x-methods
#' @aliases srow_x-methods 
#' @aliases srow_x
#' @export
#'
#' @export
setGeneric("srow_x", function(object) standardGeneric("srow_x"))

#' @name srow_x
#' @rdname srow_x-methods
#' @aliases srow_x,nifti-method
#' @export
setMethod("srow_x", "nifti", function(object) { object@"srow_x" })

#' @name srow_x
#' @rdname srow_x-methods
#' @aliases srow_x,anlz-method
#' @export
setMethod("srow_x", "anlz", function(object) { object@"srow_x" })


#' @name srow_x
#' @rdname srow_x-methods
#' @aliases srow_x<- 
#' @export
setGeneric("srow_x<-", function(object, value) { standardGeneric("srow_x<-") })

#' @name srow_x
#' @rdname srow_x-methods
#' @aliases srow_x<-,nifti-method
#' @export
setMethod("srow_x<-", 
          signature(object="nifti"), 
          function(object, value) { 
            object@"srow_x" <- value 
            audit.trail(object) <-
              niftiAuditTrailEvent(object, "modification", match.call(),
                                   paste("srow_x <-", value))            
            return(object)
          })

#' @name srow_x
#' @rdname srow_x-methods
#' @aliases srow_x<-,anlz-method
#' @export
setMethod("srow_x<-", 
          signature(object="anlz"), 
          function(object, value) { 
            object@"srow_x" <- value 
            audit.trail(object) <-
              niftiAuditTrailEvent(object, "modification", match.call(),
                                   paste("srow_x <-", value))            
            return(object)
          })

