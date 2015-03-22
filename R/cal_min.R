#' @name cal.min
#' @title Extract Image cal.min attribute
#' @docType methods 
#' @param object is an object of class \code{nifti} or \code{anlz}
#' @param value Value to assign to cal_min 
#' @description Methods that act on the ``cal_min'' in the NIfTI/ANALYZE header.
#' @rdname cal_min-methods
#' @aliases cal.min-methods 
#' @aliases cal.min
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
#' cal.min(mniLR)
#' @export
setGeneric("cal.min", function(object) standardGeneric("cal.min"))

#' @name cal.min
#' @rdname cal_min-methods
#' @aliases cal.min,nifti-method
#' @export
setMethod("cal.min", "nifti", function(object) { object@"cal_min" })

#' @name cal.min
#' @rdname cal_min-methods
#' @aliases cal.min,anlz-method
#' @export
setMethod("cal.min", "anlz", function(object) { object@"cal_min" })


#' @name cal.min
#' @rdname cal_min-methods
#' @aliases cal.min<- 
#' @export
setGeneric("cal.min<-", function(object, value) { standardGeneric("cal.min<-") })

#' @name cal.min
#' @rdname cal_min-methods
#' @aliases cal.min<-,nifti-method
#' @export
setMethod("cal.min<-", 
          signature(object="nifti"), 
          function(object, value) { 
            if ( cal_min %in% slotNames(object) ){
              object@"cal_min" <- value
              audit.trail(object) <-
                niftiAuditTrailEvent(object, "modification", match.call(),
                                     paste("cal_min <-", value))               
            } else {
              warning("cal_min is not in slotNames of object")
            }                       
            return(object)
          })

#' @name cal.min
#' @rdname cal_min-methods
#' @aliases cal.min<-,anlz-method
#' @export
setMethod("cal.min<-", 
          signature(object="anlz"), 
          function(object, value) { 
            if ( cal_min %in% slotNames(object) ){
              object@"cal_min" <- value
            } else {
              warning("cal_min is not in slotNames of object")
            }
            return(object)
          })

