#' @name %%-methods
#' @title Extract Image Attribute \code{%%}
#' @docType methods 
#' @param object is an object of class \code{nifti} or \code{anlz}.
#' @param value is the value to assign to the \code{%ff%} field.  
#' @description Methods that act on the \code{%ff%} field in the
#' NIfTI/ANALYZE header.
#' @rdname %ff%-methods
#' @aliases %%-methods, %%
#' @details See documentation on the ANALYZE and/or NIfTI data standards for
#' more details.
#' @author John Muschelli \email{muschellij2@@gmail.com},\cr
#' Brandon Whitcher \email{bwhitcher@@gmail.com}
#' @references
#' ANALYZE 7.5\cr
#' \url{http://www.mayo.edu/bir/PDF/ANALYZE75.pdf}\cr
#' NIfTI-1\cr
#' \url{http://nifti.nimh.nih.gov/}
%example%
#' @export
setGeneric("%%", function(object) standardGeneric("%%"))

#' @rdname %ff%-methods
#' @aliases %%,nifti-method
#' @export
setMethod("%%", "nifti", function(object) { object@"%ff%" })

#' @rdname %ff%-methods
#' @aliases %%,anlz-method
#' @export
setMethod("%%", "anlz", function(object) { object@"%ff%" })


#' @rdname %ff%-methods
#' @aliases %%<- 
#' @export
setGeneric("%%<-", function(object, value) { standardGeneric("%%<-") })

#' @rdname %ff%-methods
#' @aliases %%<-,nifti-method
#' @export
setMethod("%%<-", 
          signature(object="nifti"), 
          function(object, value) { 
            if ( "%ff%" %in% slotNames(object) ){
              object@"%ff%" <- value
              audit.trail(object) <-
                niftiAuditTrailEvent(object, "modification", match.call(),
                                     paste("%ff% <-", value))               
            } else {
              warning("%ff% is not in slotNames of object")
            }                       
            return(object)
          })

#' @rdname %ff%-methods
#' @aliases %%<-,anlz-method
#' @export
setMethod("%%<-", 
          signature(object="anlz"), 
          function(object, value) { 
            if ( "%ff%" %in% slotNames(object) ){
              object@"%ff%" <- value
            } else {
              warning("%ff% is not in slotNames of object")
            }
            return(object)
          })

#' @rdname %ff%-methods
#' @aliases %.%,nifti-method
#' @export
setGeneric("%.%", function(object) standardGeneric("%.%"))

#' @rdname %ff%-methods
#' @aliases %.%,nifti-method
#' @export
setMethod("%.%", "nifti", function(object) { object@"%ff%" })

#' @rdname %ff%-methods
#' @aliases %.%,anlz-method
#' @export
setMethod("%.%", "anlz", function(object) { object@"%ff%" })


#' @rdname %ff%-methods
#' @aliases %.%<- 
#' @export
setGeneric("%.%<-", function(object, value) { standardGeneric("%.%<-") })

#' @rdname %ff%-methods
#' @aliases %.%<-,nifti-method
#' @export
setMethod("%.%<-", 
          signature(object="nifti"), 
          function(object, value) { 
            if ( "%ff%" %in% slotNames(object) ){
              object@"%ff%" <- value
              audit.trail(object) <-
                niftiAuditTrailEvent(object, "modification", match.call(),
                                     paste("%ff% <-", value))               
            } else {
              warning("%ff% is not in slotNames of object")
            }                       
            return(object)
          })

#' @rdname %ff%-methods
#' @aliases %.%<-,anlz-method
#' @export
setMethod("%.%<-", 
          signature(object="anlz"), 
          function(object, value) { 
            if ( "%ff%" %in% slotNames(object) ){
              object@"%ff%" <- value
            } else {
              warning("%ff% is not in slotNames of object")
            }
            return(object)
          })
