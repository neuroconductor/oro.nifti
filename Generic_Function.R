#' @name %%
#' @title Extract NIfTI 3D Image %% attribute
#' @docType methods 
#' @param object is an object of class \code{nifti}
#' @param value Value to assign to %ff% 
#' @description Methods that act on the ``%ff%'' in the NIfTI header.
#' @rdname %%-methods
#' @aliases %%-methods 
#' @aliases %%
%example%
#' @export
setGeneric("%%", function(object) standardGeneric("%%"))

#' @name %%
#' @rdname %%-methods
#' @aliases %%,nifti-method
setMethod("%%", "nifti", function(object) { object@"%ff%" })

#' @name %%
#' @rdname %%-methods
#' @aliases %%,anlz-method
setMethod("%%", "anlz", function(object) { object@"%ff%" })


#' @name %%
#' @rdname %%-methods
#' @aliases %%<- 
setGeneric("%%<-", function(object, value) { standardGeneric("%%<-") })

#' @name %%
#' @rdname %%-methods
#' @aliases %%<-,nifti-method
setMethod("%%<-", 
          signature(object="nifti"), 
          function(object, value) { 
            object@"%ff%" <- value 
            audit.trail(object) <-
              niftiAuditTrailEvent(object, "modification", match.call(),
                                   paste("%ff% <-", value))            
            return(object)
          })

#' @name %%
#' @rdname %%-methods
#' @aliases %%<-,anlz-method
setMethod("%%<-", 
          signature(object="anlz"), 
          function(object, value) { 
            object@"%ff%" <- value 
            audit.trail(object) <-
              niftiAuditTrailEvent(object, "modification", match.call(),
                                   paste("%ff% <-", value))            
            return(object)
          })

