#' @name qform_code
#' @title Extract Image qform_code attribute
#' @docType methods 
#' @param object is an object of class \code{nifti} or \code{anlz}
#' @param value Value to assign to qform_code 
#' @description Methods that act on the ``qform_code'' in the NIfTI/ANALYZE header.
#' @rdname qform_code-methods
#' @aliases qform_code-methods 
#' @aliases qform_code
#' @export
#'
#' @export
setGeneric("qform_code", function(object) standardGeneric("qform_code"))

#' @name qform_code
#' @rdname qform_code-methods
#' @aliases qform_code,nifti-method
#' @export
setMethod("qform_code", "nifti", function(object) { object@"qform_code" })

#' @name qform_code
#' @rdname qform_code-methods
#' @aliases qform_code,anlz-method
#' @export
setMethod("qform_code", "anlz", function(object) { object@"qform_code" })


#' @name qform_code
#' @rdname qform_code-methods
#' @aliases qform_code<- 
#' @export
setGeneric("qform_code<-", function(object, value) { standardGeneric("qform_code<-") })

#' @name qform_code
#' @rdname qform_code-methods
#' @aliases qform_code<-,nifti-method
#' @export
setMethod("qform_code<-", 
          signature(object="nifti"), 
          function(object, value) { 
            if ( "qform_code" %in% slotNames(object) ){
              object@"qform_code" <- value
              audit.trail(object) <-
                niftiAuditTrailEvent(object, "modification", match.call(),
                                     paste("qform_code <-", value))               
            } else {
              warning("qform_code is not in slotNames of object")
            }                       
            return(object)
          })

#' @name qform_code
#' @rdname qform_code-methods
#' @aliases qform_code<-,anlz-method
#' @export
setMethod("qform_code<-", 
          signature(object="anlz"), 
          function(object, value) { 
            if ( "qform_code" %in% slotNames(object) ){
              object@"qform_code" <- value
            } else {
              warning("qform_code is not in slotNames of object")
            }
            return(object)
          })

