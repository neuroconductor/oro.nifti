#' @name pixdim
#' @title Extract Image pixdim attribute
#' @docType methods 
#' @param object is an object of class \code{nifti} or \code{anlz}
#' @param value Value to assign to pixdim 
#' @description Methods that act on the ``pixdim'' in the NIfTI/ANALYZE header.
#' @rdname pixdim-methods
#' @aliases pixdim-methods 
#' @aliases pixdim
#' @export
#' @examples \dontrun{
#' url <- "http://nifti.nimh.nih.gov/nifti-1/data/avg152T1_LR_nifti.nii.gz"
#' urlfile <- file.path(system.file("nifti", package="oro.nifti"),
#' "mniLR.nii.gz")
#' download.file(url, urlfile, quiet=TRUE)
#' }
#' urlfile <- file.path(system.file("nifti", package="oro.nifti"),
#'                      "mniLR.nii.gz")
#' mniLR <- readNIfTI(urlfile)
#' pixdim(mniLR)
#' @export
setGeneric("pixdim", function(object) standardGeneric("pixdim"))

#' @name pixdim
#' @rdname pixdim-methods
#' @aliases pixdim,nifti-method
#' @export
setMethod("pixdim", "nifti", function(object) { object@"pixdim" })

#' @name pixdim
#' @rdname pixdim-methods
#' @aliases pixdim,anlz-method
#' @export
setMethod("pixdim", "anlz", function(object) { object@"pixdim" })


#' @name pixdim
#' @rdname pixdim-methods
#' @aliases pixdim<- 
#' @export
setGeneric("pixdim<-", function(object, value) { standardGeneric("pixdim<-") })

#' @name pixdim
#' @rdname pixdim-methods
#' @aliases pixdim<-,nifti-method
#' @export
setMethod("pixdim<-", 
          signature(object="nifti"), 
          function(object, value) { 
            if ( "pixdim" %in% slotNames(object) ){
              object@"pixdim" <- value
              audit.trail(object) <-
                niftiAuditTrailEvent(object, "modification", match.call(),
                                     paste("pixdim <-", value))               
            } else {
              warning("pixdim is not in slotNames of object")
            }                       
            return(object)
          })

#' @name pixdim
#' @rdname pixdim-methods
#' @aliases pixdim<-,anlz-method
#' @export
setMethod("pixdim<-", 
          signature(object="anlz"), 
          function(object, value) { 
            if ( "pixdim" %in% slotNames(object) ){
              object@"pixdim" <- value
            } else {
              warning("pixdim is not in slotNames of object")
            }
            return(object)
          })

