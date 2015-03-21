#' @name quatern_c
#' @title Extract NIfTI 3D Image quatern_c attribute
#' @docType methods 
#' @param object is an object of class \code{nifti}
#' @param value Value to assign to quatern_c 
#' @description Methods that act on the ``quatern_c'' in the NIfTI header.
#' @rdname quatern_c-methods
#' @aliases quatern_c-methods 
#' @aliases quatern_c
#' @export
#'
#' @export
setGeneric("quatern_c", function(object) standardGeneric("quatern_c"))

#' @name quatern_c
#' @rdname quatern_c-methods
#' @aliases quatern_c,nifti-method
#' @export
setMethod("quatern_c", "nifti", function(object) { object@"quatern_c" })

#' @name quatern_c
#' @rdname quatern_c-methods
#' @aliases quatern_c,anlz-method
#' @export
setMethod("quatern_c", "anlz", function(object) { object@"quatern_c" })


#' @name quatern_c
#' @rdname quatern_c-methods
#' @aliases quatern_c<- 
#' @export
setGeneric("quatern_c<-", function(object, value) { standardGeneric("quatern_c<-") })

#' @name quatern_c
#' @rdname quatern_c-methods
#' @aliases quatern_c<-,nifti-method
#' @export
setMethod("quatern_c<-", 
          signature(object="nifti"), 
          function(object, value) { 
            object@"quatern_c" <- value 
            audit.trail(object) <-
              niftiAuditTrailEvent(object, "modification", match.call(),
                                   paste("quatern_c <-", value))            
            return(object)
          })

#' @name quatern_c
#' @rdname quatern_c-methods
#' @aliases quatern_c<-,anlz-method
#' @export
setMethod("quatern_c<-", 
          signature(object="anlz"), 
          function(object, value) { 
            object@"quatern_c" <- value         
            return(object)
          })

