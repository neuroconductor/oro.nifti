#' @name sizeof_hdr
#' @title Extract Image sizeof_hdr attribute
#' @docType methods 
#' @param object is an object of class \code{nifti} or \code{anlz}
#' @param value Value to assign to sizeof_hdr 
#' @description Methods that act on the ``sizeof_hdr'' in the NIfTI/ANALYZE header.
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
            if ( "sizeof_hdr" %in% slotNames(object) ){
              object@"sizeof_hdr" <- value
              audit.trail(object) <-
                niftiAuditTrailEvent(object, "modification", match.call(),
                                     paste("sizeof_hdr <-", value))               
            } else {
              warning("sizeof_hdr is not in slotNames of object")
            }                       
            return(object)
          })

#' @name sizeof_hdr
#' @rdname sizeof_hdr-methods
#' @aliases sizeof_hdr<-,anlz-method
#' @export
setMethod("sizeof_hdr<-", 
          signature(object="anlz"), 
          function(object, value) { 
            if ( "sizeof_hdr" %in% slotNames(object) ){
              object@"sizeof_hdr" <- value
            } else {
              warning("sizeof_hdr is not in slotNames of object")
            }
            return(object)
          })

