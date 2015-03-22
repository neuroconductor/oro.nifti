#' @name orient
#' @title Extract Image orient attribute
#' @docType methods 
#' @param object is an object of class \code{nifti} or \code{anlz}
#' @param value Value to assign to orient 
#' @description Methods that act on the ``orient'' in the NIfTI/ANALYZE header.
#' @rdname orient-methods
#' @aliases orient-methods 
#' @aliases orient
#' @export
#'
#' @export
setGeneric("orient", function(object) standardGeneric("orient"))

#' @name orient
#' @rdname orient-methods
#' @aliases orient,nifti-method
#' @export
setMethod("orient", "nifti", function(object) { object@"orient" })

#' @name orient
#' @rdname orient-methods
#' @aliases orient,anlz-method
#' @export
setMethod("orient", "anlz", function(object) { object@"orient" })


#' @name orient
#' @rdname orient-methods
#' @aliases orient<- 
#' @export
setGeneric("orient<-", function(object, value) { standardGeneric("orient<-") })

#' @name orient
#' @rdname orient-methods
#' @aliases orient<-,nifti-method
#' @export
setMethod("orient<-", 
          signature(object="nifti"), 
          function(object, value) { 
            if ( orient %in% slotNames(object) ){
              object@"orient" <- value
              audit.trail(object) <-
                niftiAuditTrailEvent(object, "modification", match.call(),
                                     paste("orient <-", value))               
            } else {
              warning("orient is not in slotNames of object")
            }                       
            return(object)
          })

#' @name orient
#' @rdname orient-methods
#' @aliases orient<-,anlz-method
#' @export
setMethod("orient<-", 
          signature(object="anlz"), 
          function(object, value) { 
            if ( orient %in% slotNames(object) ){
              object@"orient" <- value
            } else {
              warning("orient is not in slotNames of object")
            }
            return(object)
          })

