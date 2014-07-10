
#' Quick hack on Economist theme
#'
#'
theme_vconomist <- function(horizontal=FALSE, base_size=10) {
  theme <- theme_economist(horizontal=horizontal, base_size=base_size)
  #vtheme$plot.background$fill <- "#cccccc"
  #vtheme$axis.title$hjust <- 5
  theme$axis.text.y$hjust <- 1
  #vtheme$plot.title$hjust <- 0.06
  theme$axis.text.x$size <- 16
  theme$axis.title.x$size <- 16
  return(theme)
}

#' Quick hack on Economist theme
#'
#'
#theme_vconomist_horizontal <- theme_economist(base_size=10)
#vtheme$plot.background$fill <- "#cccccc"
#vtheme$axis.title$hjust <- 5
#htheme$axis.text.y$hjust <- 1
#vtheme$plot.title$hjust <- 0.06
#htheme$axis.text.x$size <- 16
#htheme$axis.title.x$size <- 16
