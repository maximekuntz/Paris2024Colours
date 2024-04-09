test_that("palette does not exist", {
  expect_error(paris2024_palette("FalsePalette"), "Palette not found.")
})

test_that("n greater than 1", {
  expect_error(
    paris2024_palette("Logo", n = 0),
    "At least n = 1 color should be requested"
  )
})

test_that("discrete palette has more colours than requested", {
  expect_error(
    paris2024_palette("Logo", n = 3),
    "Number of requested colors greater than what palette can offer"
  )
})
