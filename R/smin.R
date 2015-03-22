#' @name smin
#' @title Extract Image smin attribute
#' @docType methods 
#' @param object is an object of class \code{nifti} or \code{anlz}
#' @param value Value to assign to smin 
#' @description Methods that act on the ``smin'' in the NIfTI/ANALYZE header.
#' @rdname smin-methods
#' @aliases smin-methods 
#' @aliases smin
#' @export
#'
#' @export
setGeneric("smin", function(object) standardGeneric("smin"))

#' @name smin
#' @rdname smin-methods
#' @aliases smin,nifti-method
#' @export
setMethod("smin", "nifti", function(object) { object@"smin" })

#' @name smin
#' @rdname smin-methods
#' @aliases smin,anlz-method
#' @export
setMethod("smin", "anlz", function(object) { object@"smin" })


#' @name smin
#' @rdname smin-methods
#' @aliases smin<- 
#' @export
setGeneric("smin<-", function(object, value) { standardGeneric("smin<-") })

#' @name smin
#' @rdname smin-methods
#' @aliases smin<-,nifti-method
#' @export
setMethod("smin<-", 
          signature(object="nifti"), 
          function(object, value) { 
            if ( smin %in% slotNames(object) ){
              object@"smin" <- value
              audit.trail(object) <-
                niftiAuditTrailEvent(object, "modification", match.call(),
                                     paste("smin <-", value))               
            } else {
              warning("smin is not in slotNames of object")
            }                       
            return(object)
          })

#' @name smin
#' @rdname smin-methods
#' @aliases smin<-,anlz-method
#' @export
setMethod("smin<-", 
          signature(object="anlz"), 
          function(object, value) { 
            if ( smin %in% slotNames(object) ){
              object@"smin" <- value
            } else {
              warning("smin is not in slotNames of object")
            }
            return(object)
          })

