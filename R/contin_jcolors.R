
#' continuous palettes of colors for figures
#'
#' Creates different color palette functions
#'
#' @param palette Character string indicating a palette of colors.
#' @param reverse logical value indicating whether the color palette should be reversed. Defaults
#' to \code{FALSE}
#' @param interpolate Character string for color interpolation method.
#' "linear" or "spline" interpolation available
#' @param ... other arguments to be passed to \code{\link[grDevices]{colorRampPalette}}.
#' See \code{\link[grDevices]{colorRampPalette}} for details
#' @return returns a function that takes an integer argument (the required number of colors), which
#' then returns a character vector of colors
#' @export
#' @importFrom grDevices colorRampPalette
#' @examples
#'
#' colfunc <- jcolors_contin()
#' jcols   <- colfunc(1000)
#' n       <- length(jcols)
#' image(1:n, 1, as.matrix(1:n),
#'       col  = jcols,
#'       xlab = "", ylab = "",
#'       xaxt = "n", yaxt = "n", bty = "n")
#'
jcolors_contin <- function(palette = c("default",
                                       "pal2",
                                       "pal3",
                                       "rainbow"),
                           reverse = FALSE,
                           interpolate = c("spline", "linear"),
                           ...)
{

    interpolate <- match.arg(interpolate)
    reverse     <- as.logical(reverse)

    default <- c('yankees_blue'   = "#101324",  ##"#202547",
                 'purple_taupe'   = "#53354A",
                 'deep_taupe'     = "#7A6C5D",
                 'straw'          = "#E3D26F")

    if (reverse) default <- rev(default)

    default.func <- colorRampPalette(default,
                                     interpolate = interpolate,
                                     ...)


    pal2 <- c("#1a1334",
              "#26294a",
              "#01545a",
              "#017351",
              "#03c383",
              "#aad962")

    if (reverse) pal2 <- rev(pal2)

    pal2.func <- colorRampPalette(pal2,
                                  interpolate = interpolate,
                                  ...)

    pal3 <- c("#110141",
              "#710162",
              "#a12a5e",
              "#ed0345",
              "#ef6a32",
              "#fbbf45")

    if (reverse) pal3 <- rev(pal3)

    pal3.func <- colorRampPalette(pal3,
                                  interpolate = interpolate,
                                  ...)


    rainbow <- c('rosso_corsa'          = "#D12600",
                 'spanish_orange'       = "#DB6A00",
                 'green_yellow'         = "#B2FF2E",
                 'green'                = "#00AD00",
                 'pale_cerulean'        = "#9CCADE",
                 'sea_blue'             = "#005B94",
                 'st_patricks_blue'     = "#1E2085",
                 'tyrian_purple'        = "#610052",
                 'amaranth_deep_purple' = "#953272")

    if (reverse) rainbow <- rev(rainbow)

    rainbow.func <- colorRampPalette(rainbow,
                                     interpolate = interpolate,
                                     ...)

    switch(match.arg(palette),
           default = default.func,
           pal2    = pal2.func,
           pal3    = pal3.func,
           rainbow = rainbow.func)
}



# display.jcolors continuous
#' Display jcolors_contin
#'
#' displays the continuous jcolors palettes
#'
#' @param palette Character string indicating a palette of colors.
#' @export
#' @examples
#' display_jcolors_contin()
display_jcolors_contin <- function(palette = c("default",
                                               "pal2",
                                               "pal3",
                                               "rainbow"))
{
    palette <- match.arg(palette)
    colfunc <- jcolors_contin(palette)
    jcols   <- colfunc(512L)

    image(1:length(jcols),
          1, as.matrix(1:length(jcols)),
          col  = jcols,
          xlab = "", ylab = "",
          xaxt = "n", yaxt = "n", bty = "n")
}

# display.jcolors continuous
#' Display every jcolors_contin palette
#'
#' displays all of the continuous jcolors palettes
#'
#' @export
#' @examples
#' display_all_jcolors_contin()
display_all_jcolors_contin <- function()
{
    palette <- c("default",
                 "pal2",
                 "pal3",
                 "rainbow")
    jcols    <- sapply(palette, function(pal) jcolors_contin(pal)(512L))
    maxlen   <- 512L
    ncols    <- ncol(jcols)

    lr.margin <- 25

    plot(0, 0, type = "n", xlab = "", ylab = "", xlim = c(0, maxlen + 2 * lr.margin),
         ylim = c((ncols + 1) * 2, 0), yaxs = "i",
         xaxt = "n", yaxt = "n", xaxs = "i")

    yseq <- seq(2, ncols * 2, length.out = ncols)

    axis(side = 2, at = yseq, palette, las = 1)

    for (c in 1:ncols)
    {
        pal <- jcols[,c]
        rect(xleft   = lr.margin + seq(along = pal) - 0.5,
             ybottom = yseq[c] - 0.85,
             xright  = lr.margin+ seq(along = pal) + 0.5,
             ytop    = yseq[c] + 0.85,
             border  = NA,
             lwd     = 0,
             col     = pal)
    }
}


#' continuous jcolors color scales
#'
#' @inheritParams jcolors_contin
#' @export scale_color_jcolors_contin
#' @importFrom ggplot2 discrete_scale
#' @importFrom scales manual_pal
#' @rdname scale_jcolors
#'
#' @examples
#' library(ggplot2)
#'
#' plt <- ggplot(data.frame(x = rnorm(10000), y = rexp(10000, 1.5)), aes(x = x, y = y)) +
#'    geom_hex() + coord_fixed()
#'
#' plt + scale_fill_jcolors_contin() + theme_bw()
#'
#' plt + scale_fill_jcolors_contin("pal2", bias = 1.5) + theme_bw()
#'
#' plt + scale_fill_jcolors_contin("pal3") + theme_bw()
#'
#'
scale_color_jcolors_contin = function (palette = c("default",
                                                   "pal2",
                                                   "pal3",
                                                   "rainbow"),
                                       ...)
{
    palette <- match.arg(palette)
    local_scale_color <- function(...,
                                  bias, space, alpha,  ## args not to pass to gradientn
                                  reverse, interpolate)
        scale_color_gradientn(colours = colours, ...)
    local_scale_color(...)
}

#' @export scale_colour_jcolors_contin
#' @rdname scale_jcolors
scale_colour_jcolors_contin = scale_color_jcolors_contin


#' @export scale_fill_jcolors_contin
#' @importFrom ggplot2 discrete_scale
#' @rdname scale_jcolors
scale_fill_jcolors_contin = function (palette = c("default",
                                                  "pal2",
                                                  "pal3",
                                                  "rainbow"),
                                      ...)
{
    palette <- match.arg(palette)
    colours <- jcolors_contin(palette, ...)(512L)
    local_scale_fill <- function(...,
                                 bias, space, alpha,  ## args not to pass to gradientn
                                 reverse, interpolate)
        scale_fill_gradientn(colours = colours, ...)
    local_scale_fill(...)
}


