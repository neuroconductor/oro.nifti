context("xyzt_units attribute")

aim <- readANALYZE(system.file("anlz/avg152T1.hdr.gz", package = "oro.nifti"))
nim <- readNIfTI(system.file("nifti/mniRL.nii.gz", package = "oro.nifti"))

test_that("xyzt_units()", {
  expect_error(xyzt_units(aim), "no slot")
  expect_equal(xyzt_units(nim), 10)
})

test_that("xyzt.units()", {
  expect_error(xyzt.units(aim), "no slot")
  expect_equal(xyzt.units(nim), 10)
})

test_that("xyzt_units<-()", {
  xyzt_units(nim) <- 11
  expect_equal(xyzt_units(nim), 11)
})

test_that("xyzt.units<-()", {
  xyzt.units(nim) <- 12
  expect_equal(xyzt.units(nim), 12)
})
