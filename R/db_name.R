#' @name db_name
#' @title Extract Image db_name attribute
#' @docType methods 
#' @param object is an object of class \code{nifti} or \code{anlz}
#' @param value Value to assign to db_name 
#' @description Methods that act on the ``db_name'' in the NIfTI/ANALYZE header.
#' @rdname db_name-methods
#' @aliases db_name-methods 
#' @aliases db_name
#' @export
#'
#' @export
setGeneric("db_name", function(object) standardGeneric("db_name"))

#' @name db_name
#' @rdname db_name-methods
#' @aliases db_name,nifti-method
#' @export
setMethod("db_name", "nifti", function(object) { object@"db_name" })

#' @name db_name
#' @rdname db_name-methods
#' @aliases db_name,anlz-method
#' @export
setMethod("db_name", "anlz", function(object) { object@"db_name" })


#' @name db_name
#' @rdname db_name-methods
#' @aliases db_name<- 
#' @export
setGeneric("db_name<-", function(object, value) { standardGeneric("db_name<-") })

#' @name db_name
#' @rdname db_name-methods
#' @aliases db_name<-,nifti-method
#' @export
setMethod("db_name<-", 
          signature(object="nifti"), 
          function(object, value) { 
            if ( "db_name" %in% slotNames(object) ){
              object@"db_name" <- value
              audit.trail(object) <-
                niftiAuditTrailEvent(object, "modification", match.call(),
                                     paste("db_name <-", value))               
            } else {
              warning("db_name is not in slotNames of object")
            }                       
            return(object)
          })

#' @name db_name
#' @rdname db_name-methods
#' @aliases db_name<-,anlz-method
#' @export
setMethod("db_name<-", 
          signature(object="anlz"), 
          function(object, value) { 
            if ( "db_name" %in% slotNames(object) ){
              object@"db_name" <- value
            } else {
              warning("db_name is not in slotNames of object")
            }
            return(object)
          })

