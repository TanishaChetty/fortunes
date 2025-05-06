test_that("the function returns an output", {
  expect_type(fortunes("luck", "sparkle", "fire"), "character")
})

test_that("the function throws an error when used with an input", {
  expect_error(fortunes("string"))

})
