#' @name funused2-methods
#' @title Extract Image funused2 attribute
#' @docType methods 
#' @param object is an object of class \code{nifti} or \code{anlz}
#' @param value Value to assign to funused2 
#' @description Methods that act on the ``funused2'' in the NIfTI/ANALYZE header.
#' @rdname funused2-methods
#' @aliases funused2-methods 
#' @aliases funused2
#' @export
#'
#' @export
setGeneric("funused2", function(object) standardGeneric("funused2"))

#' @name funused2
#' @rdname funused2-methods
#' @aliases funused2,nifti-method
#' @export
setMethod("funused2", "nifti", function(object) { object@"funused2" })

#' @name funused2
#' @rdname funused2-methods
#' @aliases funused2,anlz-method
#' @export
setMethod("funused2", "anlz", function(object) { object@"funused2" })


#' @name funused2
#' @rdname funused2-methods
#' @aliases funused2<- 
#' @export
setGeneric("funused2<-", function(object, value) { standardGeneric("funused2<-") })

#' @name funused2
#' @rdname funused2-methods
#' @aliases funused2<-,nifti-method
#' @export
setMethod("funused2<-", 
          signature(object="nifti"), 
          function(object, value) { 
            if ( "funused2" %in% slotNames(object) ){
              object@"funused2" <- value
              audit.trail(object) <-
                niftiAuditTrailEvent(object, "modification", match.call(),
                                     paste("funused2 <-", value))               
            } else {
              warning("funused2 is not in slotNames of object")
            }                       
            return(object)
          })

#' @name funused2
#' @rdname funused2-methods
#' @aliases funused2<-,anlz-method
#' @export
setMethod("funused2<-", 
          signature(object="anlz"), 
          function(object, value) { 
            if ( "funused2" %in% slotNames(object) ){
              object@"funused2" <- value
            } else {
              warning("funused2 is not in slotNames of object")
            }
            return(object)
          })

