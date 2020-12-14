#' ext_join Function
#'
#' This function allows you to join data from an external scheme
#' to the integrated species dictionary.
#'
#' Please ensure that the vascular plant species names you attempt to join to the
#' integrated species dictionary are in a column named "original_name". For example,
#' to rename the first column in your dataset, run: names(yourdata)[1] <- "original_name"
#' @keywords plants
#' @export
#' @examples
#' ext_join()

ext_join <- function(df) {

  dic <- dictionary
  dic2 <- unique(dic[,c(1,3:9)])
  tryCatch(df2 <- merge(x = df, y = dic2, by = c("original_name"), all.x = TRUE),
           error = function(e){
             message("An error occurred:\n", e, "Are your column names correct? Must include original_name")
           })
  try(return(df2), silent = TRUE)

}
