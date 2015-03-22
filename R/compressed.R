#' @name compressed
#' @title Extract Image compressed attribute
#' @docType methods 
#' @param object is an object of class \code{nifti} or \code{anlz}
#' @param value Value to assign to compressed 
#' @description Methods that act on the ``compressed'' in the NIfTI/ANALYZE header.
#' @rdname compressed-methods
#' @aliases compressed-methods 
#' @aliases compressed
#' @export
#'
#' @export
setGeneric("compressed", function(object) standardGeneric("compressed"))

#' @name compressed
#' @rdname compressed-methods
#' @aliases compressed,nifti-method
#' @export
setMethod("compressed", "nifti", function(object) { object@"compressed" })

#' @name compressed
#' @rdname compressed-methods
#' @aliases compressed,anlz-method
#' @export
setMethod("compressed", "anlz", function(object) { object@"compressed" })


#' @name compressed
#' @rdname compressed-methods
#' @aliases compressed<- 
#' @export
setGeneric("compressed<-", function(object, value) { standardGeneric("compressed<-") })

#' @name compressed
#' @rdname compressed-methods
#' @aliases compressed<-,nifti-method
#' @export
setMethod("compressed<-", 
          signature(object="nifti"), 
          function(object, value) { 
            if ( compressed %in% slotNames(object) ){
              object@"compressed" <- value
              audit.trail(object) <-
                niftiAuditTrailEvent(object, "modification", match.call(),
                                     paste("compressed <-", value))               
            } else {
              warning("compressed is not in slotNames of object")
            }                       
            return(object)
          })

#' @name compressed
#' @rdname compressed-methods
#' @aliases compressed<-,anlz-method
#' @export
setMethod("compressed<-", 
          signature(object="anlz"), 
          function(object, value) { 
            if ( compressed %in% slotNames(object) ){
              object@"compressed" <- value
            } else {
              warning("compressed is not in slotNames of object")
            }
            return(object)
          })

