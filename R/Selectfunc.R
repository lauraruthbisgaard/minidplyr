#' Title
#'Select variables from a data frame
#'
#'
#' @param df 
#' @param vars 
#'
#' @returns A data frame with only chosen variables
#' @export
#'
#' @examples

select2 <- function(df, vars) {

  df[vars]
}


?minidplyr
