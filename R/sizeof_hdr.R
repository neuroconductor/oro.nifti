#' @name sizeof_hdr
#' @title Extract NIfTI 3D Image sizeof_hdr attribute
#' @docType methods 
#' @param object is an object of class \code{nifti}
#' @param value Value to assign to sizeof_hdr 
#' @description Methods that act on the ``sizeof_hdr'' in the NIfTI header.
#' @rdname sizeof_hdr-methods
#' @aliases sizeof_hdr-methods 
#' @aliases sizeof_hdr
#' @export
#'
#' @export
setGeneric("sizeof_hdr", function(object) standardGeneric("sizeof_hdr"))

#' @name sizeof_hdr
#' @rdname sizeof_hdr-methods
#' @aliases sizeof_hdr,nifti-method
#' @export
setMethod("sizeof_hdr", "nifti", function(object) { object@"sizeof_hdr" })

#' @name sizeof_hdr
#' @rdname sizeof_hdr-methods
#' @aliases sizeof_hdr,anlz-method
#' @export
setMethod("sizeof_hdr", "anlz", function(object) { object@"sizeof_hdr" })


#' @name sizeof_hdr
#' @rdname sizeof_hdr-methods
#' @aliases sizeof_hdr<- 
#' @export
setGeneric("sizeof_hdr<-", function(object, value) { standardGeneric("sizeof_hdr<-") })

#' @name sizeof_hdr
#' @rdname sizeof_hdr-methods
#' @aliases sizeof_hdr<-,nifti-method
#' @export
setMethod("sizeof_hdr<-", 
          signature(object="nifti"), 
          function(object, value) { 
            object@"sizeof_hdr" <- value 
            audit.trail(object) <-
              niftiAuditTrailEvent(object, "modification", match.call(),
                                   paste("sizeof_hdr <-", value))            
            return(object)
          })

#' @name sizeof_hdr
#' @rdname sizeof_hdr-methods
#' @aliases sizeof_hdr<-,anlz-method
#' @export
setMethod("sizeof_hdr<-", 
          signature(object="anlz"), 
          function(object, value) { 
            object@"sizeof_hdr" <- value 
            audit.trail(object) <-
              niftiAuditTrailEvent(object, "modification", match.call(),
                                   paste("sizeof_hdr <-", value))            
            return(object)
          })

