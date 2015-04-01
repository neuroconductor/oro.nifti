#' @name omin-methods
#' @title Extract Image omin attribute
#' @docType methods 
#' @param object is an object of class \code{nifti} or \code{anlz}
#' @param value Value to assign to omin 
#' @description Methods that act on the ``omin'' in the NIfTI/ANALYZE header.
#' @rdname omin-methods
#' @aliases omin-methods 
#' @aliases omin
#' @export
#'
#' @export
setGeneric("omin", function(object) standardGeneric("omin"))

#' @name omin
#' @rdname omin-methods
#' @aliases omin,nifti-method
#' @export
setMethod("omin", "nifti", function(object) { object@"omin" })

#' @name omin
#' @rdname omin-methods
#' @aliases omin,anlz-method
#' @export
setMethod("omin", "anlz", function(object) { object@"omin" })


#' @name omin
#' @rdname omin-methods
#' @aliases omin<- 
#' @export
setGeneric("omin<-", function(object, value) { standardGeneric("omin<-") })

#' @name omin
#' @rdname omin-methods
#' @aliases omin<-,nifti-method
#' @export
setMethod("omin<-", 
          signature(object="nifti"), 
          function(object, value) { 
            if ( "omin" %in% slotNames(object) ){
              object@"omin" <- value
              audit.trail(object) <-
                niftiAuditTrailEvent(object, "modification", match.call(),
                                     paste("omin <-", value))               
            } else {
              warning("omin is not in slotNames of object")
            }                       
            return(object)
          })

#' @name omin
#' @rdname omin-methods
#' @aliases omin<-,anlz-method
#' @export
setMethod("omin<-", 
          signature(object="anlz"), 
          function(object, value) { 
            if ( "omin" %in% slotNames(object) ){
              object@"omin" <- value
            } else {
              warning("omin is not in slotNames of object")
            }
            return(object)
          })

