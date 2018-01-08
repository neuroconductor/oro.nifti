context("oro2 other stuff")

fname = system.file("nifti/mniRL.nii.gz", package = "oro.nifti")
nim <- readNIfTI(fname)
orig_nii = RNifti::readNifti(fname)

test_that("nii2oro()", {
  expect_s4_class(nii2oro(nim), "nifti")
  expect_true({
    inherits(oro2nii(nim), "niftiImage")
    })
})

test_that("oro2nii and back again", {
  nii_img = oro2nii(nim)
  expect_s4_class(nii2oro(nii_img), "nifti")
  expect_s4_class(nii2oro(orig_nii), "nifti")
})



test_that("nii object", {
  expect_silent(dim_(  orig_nii))
  expect_silent(origin(  orig_nii))
  expect_silent(voxdim(  orig_nii))
  expect_silent(datatype(  orig_nii))
  
})
  