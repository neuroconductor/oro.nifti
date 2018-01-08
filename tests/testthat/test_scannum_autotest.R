img <- anlz(array(1:64, c(4,4,4,1)), datatype=4)
t_value = basename(tempfile())

test_that("extract and assign auto with 
scannum
", {
expect_silent(scannum(img))
expect_silent({scannum(img) = t_value})
expect_equal(scannum(img), t_value)
})
