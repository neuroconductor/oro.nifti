#' @name slice_code
#' @title Extract NIfTI 3D Image slice_code attribute
#' @docType methods 
#' @param object is an object of class \code{nifti}
#' @param value Value to assign to slice_code 
#' @description Methods that act on the ``slice_code'' in the NIfTI header.
#' @rdname slice_code-methods
#' @aliases slice_code-methods 
#' @aliases slice_code
#' @export
#'
#' @export
setGeneric("slice_code", function(object) standardGeneric("slice_code"))

#' @name slice_code
#' @rdname slice_code-methods
#' @aliases slice_code,nifti-method
#' @export
setMethod("slice_code", "nifti", function(object) { object@"slice_code" })

#' @name slice_code
#' @rdname slice_code-methods
#' @aliases slice_code,anlz-method
#' @export
setMethod("slice_code", "anlz", function(object) { object@"slice_code" })


#' @name slice_code
#' @rdname slice_code-methods
#' @aliases slice_code<- 
#' @export
setGeneric("slice_code<-", function(object, value) { standardGeneric("slice_code<-") })

#' @name slice_code
#' @rdname slice_code-methods
#' @aliases slice_code<-,nifti-method
#' @export
setMethod("slice_code<-", 
          signature(object="nifti"), 
          function(object, value) { 
            object@"slice_code" <- value 
            audit.trail(object) <-
              niftiAuditTrailEvent(object, "modification", match.call(),
                                   paste("slice_code <-", value))            
            return(object)
          })

#' @name slice_code
#' @rdname slice_code-methods
#' @aliases slice_code<-,anlz-method
#' @export
setMethod("slice_code<-", 
          signature(object="anlz"), 
          function(object, value) { 
            object@"slice_code" <- value         
            return(object)
          })

