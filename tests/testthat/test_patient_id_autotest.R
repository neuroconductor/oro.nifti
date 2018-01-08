img <- anlz(array(1:64, c(4,4,4,1)), datatype=4)
t_value = basename(tempfile())

test_that("extract and assign auto with 
patient_id
", {
expect_silent(patient_id(img))
expect_silent({patient_id(img) = t_value})
expect_equal(patient_id(img), t_value)
})
