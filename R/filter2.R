#' Title
#'
#' @param df 
#' @param rows 
#'
#' @returns A data frame containing only the selected rows. The original data frame is not modified.
#' @export
#'
#' @examples
#' filter2(iris,1:10)
#' 
filter2 <- function(df,rows) {
  df[rows, ]
} 






