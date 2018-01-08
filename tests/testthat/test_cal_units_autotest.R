img <- anlz(array(1:64, c(4,4,4,1)), datatype=4)
t_value = basename(tempfile())

test_that("extract and assign auto with 
cal_units
", {
expect_silent(cal_units(img))
expect_silent({cal_units(img) = t_value})
expect_equal(cal_units(img), t_value)
})
