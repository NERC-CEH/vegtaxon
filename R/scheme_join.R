#' scheme_join Function
#'
#' This function allows you to join data from the CS, ECN, LTMN or NPMS
#' to the integrated species dictionary.
#' @keywords plants
#' @export
#' @examples
#' scheme_join()


scheme_join <- function(df) {

  dic <- dictionary
  tryCatch(df2 <- merge(x = df, y = dic, by = c("original_name","scheme"), all.x = TRUE),
           error = function(e){
             message("An error occurred:\n", e, "Are your column names correct? Must include original_name and scheme")
           })
  try(return(df2), silent = TRUE)

}
