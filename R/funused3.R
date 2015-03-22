#' @name funused3
#' @title Extract Image funused3 attribute
#' @docType methods 
#' @param object is an object of class \code{nifti} or \code{anlz}
#' @param value Value to assign to funused3 
#' @description Methods that act on the ``funused3'' in the NIfTI/ANALYZE header.
#' @rdname funused3-methods
#' @aliases funused3-methods 
#' @aliases funused3
#' @export
#'
#' @export
setGeneric("funused3", function(object) standardGeneric("funused3"))

#' @name funused3
#' @rdname funused3-methods
#' @aliases funused3,nifti-method
#' @export
setMethod("funused3", "nifti", function(object) { object@"funused3" })

#' @name funused3
#' @rdname funused3-methods
#' @aliases funused3,anlz-method
#' @export
setMethod("funused3", "anlz", function(object) { object@"funused3" })


#' @name funused3
#' @rdname funused3-methods
#' @aliases funused3<- 
#' @export
setGeneric("funused3<-", function(object, value) { standardGeneric("funused3<-") })

#' @name funused3
#' @rdname funused3-methods
#' @aliases funused3<-,nifti-method
#' @export
setMethod("funused3<-", 
          signature(object="nifti"), 
          function(object, value) { 
            if ( "funused3" %in% slotNames(object) ){
              object@"funused3" <- value
              audit.trail(object) <-
                niftiAuditTrailEvent(object, "modification", match.call(),
                                     paste("funused3 <-", value))               
            } else {
              warning("funused3 is not in slotNames of object")
            }                       
            return(object)
          })

#' @name funused3
#' @rdname funused3-methods
#' @aliases funused3<-,anlz-method
#' @export
setMethod("funused3<-", 
          signature(object="anlz"), 
          function(object, value) { 
            if ( "funused3" %in% slotNames(object) ){
              object@"funused3" <- value
            } else {
              warning("funused3 is not in slotNames of object")
            }
            return(object)
          })

