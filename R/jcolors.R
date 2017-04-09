# jcolors
#' Vectors of colors for figures
#'
#' Creates different vectors of related colors that may be useful for figures.
#'
#' @param palette Character string indicating a palette of colors.
#' @return Vector of character strings representing the chosen palette of colors.
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
jcolors <- function(palette = c("default"))
{
    default <- c('chartreuse3'  = "#66CD00", # chartreuse3
                 'deepskyblue3' = "#009ACD", # deepskyblue3
                 'orangered'    = "#FF4500", # orangered
                 'darkorchid1'  = "#BF3EFF", # darkorchid1
                 'yellow'       = "#FFFF00") # yellow

    highlight <- c('highlight' = "yellow")

    switch(match.arg(palette),
           default = default,
           highlight = highlight)
}


# display.jcolors
#' Display jcolors
#'
#' Creates different vectors of related colors that may be useful for figures.
#'
#' @param palette Character string indicating a palette of colors.
#' @return Vector of character strings representing the chosen palette of colors.
#' @export
#' @importFrom grDevices rgb2hsv
#' @examples
display_jcolors <- function(palette = c("default"))
{
    palette <- match.arg(palette)
    jcols   <- jcolors(palette)
    n       <- length(jcols)
    cnames  <- names(jcols)
    image(1:n, 1, as.matrix(1:n),
          col  = jcols,
          xlab = "", ylab = "",
          xaxt = "n", yaxt = "n", bty = "n")
    text(1:5, par("usr")[1] - 0.025,
         srt = 45, adj = 0.5,
         labels = cnames, xpd = TRUE)
}



#' jcolors color scales
#'
#' @inheritParams jcolors
#' @param ... additional parameters for \code{\link[ggplot2]{discrete_scale}}
#' @export scale_color_jcolors
#' @importFrom ggplot2 discrete_scale
#' @importFrom scales manual_pal
#' @rdname scale_jcolors
#'
#' @examples
#' library(ggplot2)
#' data(morley)
#'
#' pltl <- ggplot(data = morley, aes(x = Run, y = Speed,
#' group = factor(Expt),
#' colour = factor(Expt))) +
#'     geom_line(size = 2) +
#'     theme_bw() +
#'     theme(panel.background = element_rect(fill = "grey97"),
#'           panel.border = element_blank())
#'
#' pltd <- ggplot(data = morley, aes(x = Run, y = Speed,
#' group = factor(Expt),
#' colour = factor(Expt))) +
#'     geom_line(size = 2) +
#'     theme_bw() +
#'     theme(panel.background = element_rect(fill = "grey15"),
#'           panel.border = element_blank(),
#'           panel.grid.major = element_line(color = "grey45"),
#'           panel.grid.minor = element_line(color = "grey25"))
#'
#' pltl + scale_color_jcolors(palette = "default")
#'
#' pltd + scale_color_jcolors(palette = "default")
#'
#'
scale_color_jcolors = function (palette = c("default"),
                                ...)
{
    palette <- match.arg(palette)
    discrete_scale("colour",
                   "jcolors",
                   manual_pal(unname(jcolors(palette))),
                   ...)
}

#' @export scale_colour_jcolors
#' @rdname scale_jcolors
scale_colour_jcolors = scale_color_jcolors


#' @export scale_fill_jcolors
#' @importFrom ggplot2 discrete_scale
#' @rdname scale_jcolors
scale_fill_jcolors = function (palette = c("default"),
                               ...)
{
    palette <- match.arg(palette)
    discrete_scale("fill",
                   "jcolors",
                   manual_pal(unname(jcolors(palette))),
                   ...)
}

