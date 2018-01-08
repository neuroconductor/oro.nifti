img <- anlz(array(1:64, c(4,4,4,1)), datatype=4)
t_value = basename(tempfile())

test_that("extract and assign auto with 
vox_units
", {
expect_silent(vox_units(img))
expect_silent({vox_units(img) = t_value})
expect_equal(vox_units(img), t_value)
})
