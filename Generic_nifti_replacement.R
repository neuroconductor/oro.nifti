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
