test_that("test function adds correctly", {
  # Test adding positive numbers
  expect_equal(test(2, 3), 5)
  
  # Test adding negative numbers
  expect_equal(test(-2, -3), -5)
  
  # Test adding zero
  expect_equal(test(0, 5), 5)
  expect_equal(test(5, 0), 5)
  
  # Test adding decimals
  expect_equal(test(1.5, 2.5), 4)
})
