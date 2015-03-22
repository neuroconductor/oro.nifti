#' @name sform_code
#' @title Extract Image sform_code attribute
#' @docType methods 
#' @param object is an object of class \code{nifti} or \code{anlz}
#' @param value Value to assign to sform_code 
#' @description Methods that act on the ``sform_code'' in the NIfTI/ANALYZE header.
#' @rdname sform_code-methods
#' @aliases sform_code-methods 
#' @aliases sform_code
#' @export
#'
#' @export
setGeneric("sform_code", function(object) standardGeneric("sform_code"))

#' @name sform_code
#' @rdname sform_code-methods
#' @aliases sform_code,nifti-method
#' @export
setMethod("sform_code", "nifti", function(object) { object@"sform_code" })

#' @name sform_code
#' @rdname sform_code-methods
#' @aliases sform_code,anlz-method
#' @export
setMethod("sform_code", "anlz", function(object) { object@"sform_code" })


#' @name sform_code
#' @rdname sform_code-methods
#' @aliases sform_code<- 
#' @export
setGeneric("sform_code<-", function(object, value) { standardGeneric("sform_code<-") })

#' @name sform_code
#' @rdname sform_code-methods
#' @aliases sform_code<-,nifti-method
#' @export
setMethod("sform_code<-", 
          signature(object="nifti"), 
          function(object, value) { 
            if ( "sform_code" %in% slotNames(object) ){
              object@"sform_code" <- value
              audit.trail(object) <-
                niftiAuditTrailEvent(object, "modification", match.call(),
                                     paste("sform_code <-", value))               
            } else {
              warning("sform_code is not in slotNames of object")
            }                       
            return(object)
          })

#' @name sform_code
#' @rdname sform_code-methods
#' @aliases sform_code<-,anlz-method
#' @export
setMethod("sform_code<-", 
          signature(object="anlz"), 
          function(object, value) { 
            if ( "sform_code" %in% slotNames(object) ){
              object@"sform_code" <- value
            } else {
              warning("sform_code is not in slotNames of object")
            }
            return(object)
          })

