context("oro2 other stuff")

nim <- readNIfTI(system.file("nifti/mniRL.nii.gz", package = "oro.nifti"))
nii_img = oro2nii(nim)

test_that("nii2oro()", {
  expect_s4_class(nii2oro(nim), "nifti")
  expect_true({
    inherits(oro2nii(nim), "niftiImage")
    })
})

test_that("oro2nii and back again", {
  nii_img = oro2nii(nim)
  expect_s4_class(nii2oro(nii_img), "nifti")
})



test_that("nii object", {
  expect_silent(dim_(  nii_img))
  expect_silent(origin(  nii_img))
  expect_silent(voxdim(  nii_img))
  expect_silent(datatype(  nii_img))
  
})
  