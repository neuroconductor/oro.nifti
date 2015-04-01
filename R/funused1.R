#' @name funused1-methods
#' @title Extract Image funused1 attribute
#' @docType methods 
#' @param object is an object of class \code{nifti} or \code{anlz}
#' @param value Value to assign to funused1 
#' @description Methods that act on the ``funused1'' in the NIfTI/ANALYZE header.
#' @rdname funused1-methods
#' @aliases funused1-methods 
#' @aliases funused1
#' @export
#'
#' @export
setGeneric("funused1", function(object) standardGeneric("funused1"))

#' @name funused1
#' @rdname funused1-methods
#' @aliases funused1,nifti-method
#' @export
setMethod("funused1", "nifti", function(object) { object@"funused1" })

#' @name funused1
#' @rdname funused1-methods
#' @aliases funused1,anlz-method
#' @export
setMethod("funused1", "anlz", function(object) { object@"funused1" })


#' @name funused1
#' @rdname funused1-methods
#' @aliases funused1<- 
#' @export
setGeneric("funused1<-", function(object, value) { standardGeneric("funused1<-") })

#' @name funused1
#' @rdname funused1-methods
#' @aliases funused1<-,nifti-method
#' @export
setMethod("funused1<-", 
          signature(object="nifti"), 
          function(object, value) { 
            if ( "funused1" %in% slotNames(object) ){
              object@"funused1" <- value
              audit.trail(object) <-
                niftiAuditTrailEvent(object, "modification", match.call(),
                                     paste("funused1 <-", value))               
            } else {
              warning("funused1 is not in slotNames of object")
            }                       
            return(object)
          })

#' @name funused1
#' @rdname funused1-methods
#' @aliases funused1<-,anlz-method
#' @export
setMethod("funused1<-", 
          signature(object="anlz"), 
          function(object, value) { 
            if ( "funused1" %in% slotNames(object) ){
              object@"funused1" <- value
            } else {
              warning("funused1 is not in slotNames of object")
            }
            return(object)
          })

