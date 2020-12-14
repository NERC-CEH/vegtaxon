#' ind_cwt Function
#'
#' This function allows you to calculate the cover-weighted indicator values for
#' each plot. Currently includes Ellenberg N, R and W.
#' @keywords plants
#' @export
#' @examples
#' ind_cwt()

ind_cwt <- function(df) {
  # Calculate mean Ebergs by plot (not weighted by cover)
  df.w.cwt.ebg <- df %>%
    group_by(site,plot,year) %>%
    mutate(plot_cover = sum(cover, na.rm = TRUE))
  # Calculate weighted Eberg (E*c)
  df.w.cwt.ebg$weighted_Ellenberg_R <- df.w.cwt.ebg$Ellenberg_R * df.w.cwt.ebg$cover
  df.w.cwt.ebg$weighted_Ellenberg_N <- df.w.cwt.ebg$Ellenberg_N * df.w.cwt.ebg$cover
  df.w.cwt.ebg$weighted_Ellenberg_W <- df.w.cwt.ebg$Ellenberg_W * df.w.cwt.ebg$cover
  # Calculate cover-weighted plot Ellenberg values
  df.w.cwt.ebg2 <- df.w.cwt.ebg %>%
    group_by(site,plot,year) %>%
    mutate(Ellenberg_R_plot_cwt = sum(weighted_Ellenberg_R, na.rm = TRUE)/plot_cover,
           Ellenberg_N_plot_cwt = sum(weighted_Ellenberg_N, na.rm = TRUE)/plot_cover,
           Ellenberg_W_plot_cwt = sum(weighted_Ellenberg_W, na.rm = TRUE)/plot_cover)
  return(CS.eberg.wt2)

}
