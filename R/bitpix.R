#' @name bitpix
#' @title Extract Image bitpix attribute
#' @docType methods 
#' @param object is an object of class \code{nifti} or \code{anlz}
#' @param value Value to assign to bitpix 
#' @description Methods that act on the ``bitpix'' in the NIfTI/ANALYZE header.
#' @rdname bitpix-methods
#' @aliases bitpix-methods 
#' @aliases bitpix
#' @export
#'
#' @export
setGeneric("bitpix", function(object) standardGeneric("bitpix"))

#' @name bitpix
#' @rdname bitpix-methods
#' @aliases bitpix,nifti-method
#' @export
setMethod("bitpix", "nifti", function(object) { object@"bitpix" })

#' @name bitpix
#' @rdname bitpix-methods
#' @aliases bitpix,anlz-method
#' @export
setMethod("bitpix", "anlz", function(object) { object@"bitpix" })


#' @name bitpix
#' @rdname bitpix-methods
#' @aliases bitpix<- 
#' @export
setGeneric("bitpix<-", function(object, value) { standardGeneric("bitpix<-") })

#' @name bitpix
#' @rdname bitpix-methods
#' @aliases bitpix<-,nifti-method
#' @export
setMethod("bitpix<-", 
          signature(object="nifti"), 
          function(object, value) { 
            if ( bitpix %in% slotNames(object) ){
              object@"bitpix" <- value
              audit.trail(object) <-
                niftiAuditTrailEvent(object, "modification", match.call(),
                                     paste("bitpix <-", value))               
            } else {
              warning("bitpix is not in slotNames of object")
            }                       
            return(object)
          })

#' @name bitpix
#' @rdname bitpix-methods
#' @aliases bitpix<-,anlz-method
#' @export
setMethod("bitpix<-", 
          signature(object="anlz"), 
          function(object, value) { 
            if ( bitpix %in% slotNames(object) ){
              object@"bitpix" <- value
            } else {
              warning("bitpix is not in slotNames of object")
            }
            return(object)
          })

