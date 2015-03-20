#' @name pixdim
#' @title Extract NIfTI 3D Image pixdim attribute
#' @docType methods 
#' @param object is an object of class \code{nifti}
#' @param value Value to assign to pixdim 
#' @description Methods that act on the ``pixdim'' in the NIfTI header.
#' @rdname pixdim-methods
#' @aliases pixdim-methods 
#' @aliases pixdim
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
setMethod("pixdim", "nifti", function(object) { object@"pixdim" })

#' @name pixdim
#' @rdname pixdim-methods
#' @aliases pixdim,anlz-method
setMethod("pixdim", "anlz", function(object) { object@"pixdim" })


#' @name pixdim
#' @rdname pixdim-methods
#' @aliases pixdim<- 
setGeneric("pixdim<-", function(object, value) { standardGeneric("pixdim<-") })

#' @name pixdim
#' @rdname pixdim-methods
#' @aliases pixdim<-,nifti-method
setMethod("pixdim<-", 
          signature(object="nifti"), 
          function(object, value) { 
            object@"pixdim" <- value 
            audit.trail(object) <-
              niftiAuditTrailEvent(object, "modification", match.call(),
                                   paste("pixdim <-", value))            
            return(object)
          })

#' @name pixdim
#' @rdname pixdim-methods
#' @aliases pixdim<-,anlz-method
setMethod("pixdim<-", 
          signature(object="anlz"), 
          function(object, value) { 
            object@"pixdim" <- value 
            audit.trail(object) <-
              niftiAuditTrailEvent(object, "modification", match.call(),
                                   paste("pixdim <-", value))            
            return(object)
          })

