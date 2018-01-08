img <- anlz(array(1:64, c(4,4,4,1)), datatype=4)
t_value = basename(tempfile())

test_that("extract and assign auto with 
generated
", {
expect_silent(generated(img))
expect_silent({generated(img) = t_value})
expect_equal(generated(img), t_value)
})
