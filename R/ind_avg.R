#' ind_avg Function
#'
#' This function allows you to calculate the average indicator value for each
#' plot. Currently includes Ellenberg N, R and W.
#' @keywords plants
#' @export
#' @examples
#' ind_avg()

ind_avg <- function(df) {
  # Calculate mean Ebergs by plot (not weighted by cover)
  df.w.ebg <- df %>%
    group_by(site,plot,year) %>%
    mutate(Ellenberg_R_plot = mean(Ellenberg_R, na.rm=TRUE),
           Ellenberg_N_plot = mean(Ellenberg_N, na.rm=TRUE),
           Ellenberg_W_plot = mean(Ellenberg_W, na.rm=TRUE))
  return(df.w.ebg)

}
