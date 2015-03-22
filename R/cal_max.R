#' @name cal.max-methods
#' @title Extract Image cal.max attribute
#' @docType methods 
#' @param object is an object of class \code{nifti} or \code{anlz}
#' @param value Value to assign to cal_max 
#' @description Methods that act on the ``cal_max'' in the NIfTI/ANALYZE header.
#' @rdname cal_max-methods
#' @aliases cal.max-methods 
#' @aliases cal.max
#' @export
#' @examples \dontrun{
#' url <- "http://nifti.nimh.nih.gov/nifti-1/data/avg152T1_LR_nifti.nii.gz"
#' urlfile <- file.path(system.file("nifti", package="oro.nifti"),
#'                      "mniLR.nii.gz")
#' download.file(url, urlfile, quiet=TRUE)
#' }
#' urlfile <- file.path(system.file("nifti", package="oro.nifti"),
#'                      "mniLR.nii.gz")
#' mniLR <- readNIfTI(urlfile)
#' cal.max(mniLR)
#' @export
setGeneric("cal.max", function(object) standardGeneric("cal.max"))

#' @name cal.max
#' @rdname cal_max-methods
#' @aliases cal.max,nifti-method
#' @export
setMethod("cal.max", "nifti", function(object) { object@"cal_max" })

#' @name cal.max
#' @rdname cal_max-methods
#' @aliases cal.max,anlz-method
#' @export
setMethod("cal.max", "anlz", function(object) { object@"cal_max" })


#' @name cal.max
#' @rdname cal_max-methods
#' @aliases cal.max<- 
#' @export
setGeneric("cal.max<-", function(object, value) { standardGeneric("cal.max<-") })

#' @name cal.max
#' @rdname cal_max-methods
#' @aliases cal.max<-,nifti-method
#' @export
setMethod("cal.max<-", 
          signature(object="nifti"), 
          function(object, value) { 
            if ( "cal_max" %in% slotNames(object) ){
              object@"cal_max" <- value
              audit.trail(object) <-
                niftiAuditTrailEvent(object, "modification", match.call(),
                                     paste("cal_max <-", value))               
            } else {
              warning("cal_max is not in slotNames of object")
            }                       
            return(object)
          })

#' @name cal.max
#' @rdname cal_max-methods
#' @aliases cal.max<-,anlz-method
#' @export
setMethod("cal.max<-", 
          signature(object="anlz"), 
          function(object, value) { 
            if ( "cal_max" %in% slotNames(object) ){
              object@"cal_max" <- value
            } else {
              warning("cal_max is not in slotNames of object")
            }
            return(object)
          })

