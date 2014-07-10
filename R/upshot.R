#' Theme inspired by The Upshot plots
#'
#' Theme inspired by the plots on \href{NYT The Upshot}{http://www.nytimes.com/upshot/}.
#'
#' @param base_size Base font size.
#' @param base_family Plot text font family.
#' @family themes upshot
#' @export
#' @examples
#'  (qplot(hp, mpg, data= subset(mtcars, cyl != 5), geom="point", color = factor(cyl))
#'  + ggtitle("Horsepower, mpg and cylinders")
#'  + geom_smooth(method = "lm", se = FALSE)
#'  + scale_color_fivethirtyeight()
#'  + theme_upshot())
theme_upshot <- function(base_size = 12, base_family = "sans") {
  (theme_foundation(base_size = base_size, base_family = base_family)
   + theme(
     line = element_line(),
     rect = element_rect(fill = ggthemes_data$fivethirtyeight['ltgray'], linetype = 0, colour = NA),
     text = element_text(colour = ggthemes_data$fivethirtyeight['dkgray']),
     axis.title = element_blank(),
     axis.text = element_text(),
     axis.ticks = element_blank(),
     axis.line = element_blank(),
     legend.background = element_rect(),
     legend.position = "bottom",
     legend.direction = "horizontal",
     legend.box = "vertical",
     panel.grid = element_line(colour = NULL),
     panel.grid.major = element_line(colour = ggthemes_data$fivethirtyeight['medgray']),
     panel.grid.minor = element_blank(),
     # unfortunately, can't mimic subtitles
     plot.title = element_text(hjust = 0, size = rel(1.5), face = "bold"),
     plot.margin = unit(c(1, 1, 1, 1), "lines"),
     strip.background=element_rect()))
}
