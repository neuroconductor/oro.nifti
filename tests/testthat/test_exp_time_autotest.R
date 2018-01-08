img <- anlz(array(1:64, c(4,4,4,1)), datatype=4)
t_value = basename(tempfile())

test_that("extract and assign auto with 
exp_time
", {
expect_silent(exp_time(img))
expect_silent({exp_time(img) = t_value})
expect_equal(exp_time(img), t_value)
})
