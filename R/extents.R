#' @name extents-methods
#' @title Extract Image extents attribute
#' @docType methods 
#' @param object is an object of class \code{nifti} or \code{anlz}
#' @param value Value to assign to extents 
#' @description Methods that act on the ``extents'' in the NIfTI/ANALYZE header.
#' @rdname extents-methods
#' @aliases extents-methods 
#' @aliases extents
#' @export
#'
#' @export
setGeneric("extents", function(object) standardGeneric("extents"))

#' @name extents
#' @rdname extents-methods
#' @aliases extents,nifti-method
#' @export
setMethod("extents", "nifti", function(object) { object@"extents" })

#' @name extents
#' @rdname extents-methods
#' @aliases extents,anlz-method
#' @export
setMethod("extents", "anlz", function(object) { object@"extents" })


#' @name extents
#' @rdname extents-methods
#' @aliases extents<- 
#' @export
setGeneric("extents<-", function(object, value) { standardGeneric("extents<-") })

#' @name extents
#' @rdname extents-methods
#' @aliases extents<-,nifti-method
#' @export
setMethod("extents<-", 
          signature(object="nifti"), 
          function(object, value) { 
            if ( "extents" %in% slotNames(object) ){
              object@"extents" <- value
              audit.trail(object) <-
                niftiAuditTrailEvent(object, "modification", match.call(),
                                     paste("extents <-", value))               
            } else {
              warning("extents is not in slotNames of object")
            }                       
            return(object)
          })

#' @name extents
#' @rdname extents-methods
#' @aliases extents<-,anlz-method
#' @export
setMethod("extents<-", 
          signature(object="anlz"), 
          function(object, value) { 
            if ( "extents" %in% slotNames(object) ){
              object@"extents" <- value
            } else {
              warning("extents is not in slotNames of object")
            }
            return(object)
          })

