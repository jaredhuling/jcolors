# jcolors
#' Vectors of colors for figures
#'
#' Creates different vectors of related colors that may be useful for figures.
#'
#' @param set Character string indicating a set of colors.
#' @return Vector of character strings representing the chosen set of colors.
#' @export
#' @importFrom grDevices rgb2hsv
#' @examples
#' par(mar=c(0.6,5.1,0.6,0.6))
#' plot(0, 0, type = "n", xlab = "", ylab = "", xlim = c(0, 6), ylim = c(3, 0), yaxs = "i",
#'      xaxt = "n", yaxt = "n", xaxs = "i")
#' axis(side=2, at=1:2, c("default", "highlight"), las=1)
#'
#' def <- jcolors("default")
#' points(seq(along = def), rep(1, length(def)), pch = 22, bg = def, cex = 5)
jcolors <- function(set = c("default"))
{
    default <- c('chartreuse3'  = "#66CD00", # chartreuse3
                 'orangered'    = "#FF4500", # orangered
                 'deepskyblue3' = "#009ACD", # deepskyblue3
                 'darkorchid1'  = "#BF3EFF", # darkorchid1
                 'yellow'       = "#FFFF00") # yellow

    switch(match.arg(set),
           default = default,
           highlight = highlight)
}






