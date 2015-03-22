#' @name %%-methods
#' @title Extract Image %% attribute
#' @docType methods 
#' @param object is an object of class \code{nifti} or \code{anlz}
#' @param value Value to assign to %ff% 
#' @description Methods that act on the ``%ff%'' in the NIfTI/ANALYZE header.
#' @rdname %ff%-methods
#' @aliases %%-methods 
#' @aliases %%
#' @export
%example%
#' @export
setGeneric("%%", function(object) standardGeneric("%%"))

#' @name %%
#' @rdname %ff%-methods
#' @aliases %%,nifti-method
#' @export
setMethod("%%", "nifti", function(object) { object@"%ff%" })

#' @name %%
#' @rdname %ff%-methods
#' @aliases %%,anlz-method
#' @export
setMethod("%%", "anlz", function(object) { object@"%ff%" })


#' @name %%
#' @rdname %ff%-methods
#' @aliases %%<- 
#' @export
setGeneric("%%<-", function(object, value) { standardGeneric("%%<-") })

#' @name %%
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

#' @name %%
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

