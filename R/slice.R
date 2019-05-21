#############################################################################
## slice() for class="nifti"
## promptMethods(slice, "slice-methods.Rd")
#############################################################################

slice.nifti <- function(x, z=1, w=1, col=gray(0:64/64),
                        plane=c("axial", "coronal", "sagittal"), zlim=NULL,
                        xlab="", ylab="", axes=FALSE, oma=rep(0,4),
                        mar=rep(0,4), bg="black", 
                        useRaster = TRUE, 
                        ...) {
  
  image.nifti(
    x = x,
    z = z,
    w = w,
    col = col,
    plane = plane,
    plot.type = "single",
    zlim = zlim,
    xlab = xlab,
    ylab = ylab,
    axes = axes,
    oma = oma,
    mar = mar,
    bg = bg,
    useRaster = useRaster,
    ... = ...
  )

}
#' @title Methods for Function `slice'
#' 
#' @description Produce \dQuote{lightbox} layout of slices for \code{nifti}, \code{anlz} and
#' \code{afni} objects.
#' 
#' @details Uses the S3 generic function \code{slice}, with medical-image friendly
#' settings, to display \code{nifti}, \code{anlz} and \code{afni} class objects
#' in a \dQuote{lightbox} layout.
#' 
#' @name slice-methods
#' @aliases slice slice.nifti slice-methods slice,ANY-method slice,afni-method
#' slice,anlz-method slice,nifti-method
#' @docType methods
#' @param x is an object of class \code{nifti} or similar.
#' @param z is the slice to be displayed (ignored when \code{plot.type =
#' "multiple"}).
#' @param w is the time point to be displayed (4D arrays only).
#' @param col is grayscale (by default).
#' @param plane is the plane of acquisition to be displayed (choices are
#' \sQuote{axial}, \sQuote{coronal}, \sQuote{sagittal}).
#' @param zlim is set to \code{NULL} by default and utilizes the internal image
#' range.
#' @param xlab is set to \dQuote{} since all margins are set to zero.
#' @param ylab is set to \dQuote{} since all margins are set to zero.
#' @param axes is set to \code{FALSE} since all margins are set to zero.
#' @param oma is the size of the outer margins in the \code{par} function.
#' @param mar is the number of lines of margin in the \code{par} function.
#' @param bg is the background color in the \code{par} function.
#' @param useRaster if \code{TRUE}, a bitmap raster is used to plot 
#' the image instead of polygons. Passed to \code{\link[graphics]{image}}
#' @param \dots other arguments to the \code{image} function may be provided
#' here.
#' @section Methods: \describe{ \item{x = "ANY"}{Generic function: see
#' \code{\link[graphics]{image}}.} \item{x = "nifti"}{Produce images for
#' \code{x}.} \item{x = "anlz"}{Produce images for \code{x}.} \item{x =
#' "afni"}{Produce images for \code{x}.} }
#' @author Brandon Whitcher \email{bwhitcher@@gmail.com}
#' @seealso \code{\link{orthographic-methods}}, \code{\link{image-methods}}
#' @keywords methods
#' @import graphics
#' @import grDevices
#' @export
#' @rdname slice-methods
setGeneric("slice", function(x, ...) standardGeneric("slice")) 
#' @export
#' @rdname slice-methods
setMethod("slice", signature(x = "nifti"), slice.nifti)
#' @export
#' @rdname slice-methods
setMethod("slice", signature(x = "anlz"), slice.nifti)
#' @export
#' @rdname slice-methods
setMethod("slice", signature(x = "array"), 
          function(x, ...) {
            x <- as(x, "nifti")
            slice.nifti(x, ...)
          })
#' @export
#' @rdname slice-methods
setMethod("slice", signature(x = "afni"),
          function(x, ...) {
            x <- as(x, "nifti")
            slice.nifti(x, ...)
          })
