#' @name glmin-methods
#' @title Extract Image glmin attribute
#' @docType methods 
#' @param object is an object of class \code{nifti} or \code{anlz}
#' @param value Value to assign to glmin 
#' @description Methods that act on the ``glmin'' in the NIfTI/ANALYZE header.
#' @rdname glmin-methods
#' @aliases glmin-methods 
#' @aliases glmin
#' @export
#'
#' @export
setGeneric("glmin", function(object) standardGeneric("glmin"))

#' @name glmin
#' @rdname glmin-methods
#' @aliases glmin,nifti-method
#' @export
setMethod("glmin", "nifti", function(object) { object@"glmin" })

#' @name glmin
#' @rdname glmin-methods
#' @aliases glmin,anlz-method
#' @export
setMethod("glmin", "anlz", function(object) { object@"glmin" })


#' @name glmin
#' @rdname glmin-methods
#' @aliases glmin<- 
#' @export
setGeneric("glmin<-", function(object, value) { standardGeneric("glmin<-") })

#' @name glmin
#' @rdname glmin-methods
#' @aliases glmin<-,nifti-method
#' @export
setMethod("glmin<-", 
          signature(object="nifti"), 
          function(object, value) { 
            if ( "glmin" %in% slotNames(object) ){
              object@"glmin" <- value
              audit.trail(object) <-
                niftiAuditTrailEvent(object, "modification", match.call(),
                                     paste("glmin <-", value))               
            } else {
              warning("glmin is not in slotNames of object")
            }                       
            return(object)
          })

#' @name glmin
#' @rdname glmin-methods
#' @aliases glmin<-,anlz-method
#' @export
setMethod("glmin<-", 
          signature(object="anlz"), 
          function(object, value) { 
            if ( "glmin" %in% slotNames(object) ){
              object@"glmin" <- value
            } else {
              warning("glmin is not in slotNames of object")
            }
            return(object)
          })

