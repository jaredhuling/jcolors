
#' continuous palettes of colors for figures
#'
#' Creates different color palette functions
#'
#' @param palette Character string indicating a palette of colors.
#' @param interpolate Character string for color interpolation method.
#' "linear" or "spline" interpolation available
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
jcolors_contin <- function(palette = c("default"), interpolate = c("spline", "linear"))
{

    interpolate <- match.arg(interpolate)

    default <- c('yankees_blue'   = "#202547",
                 'purple_taupe'   = "#53354A",
                 'deep_taupe'     = "#7A6C5D",
                 'straw'          = "#E3D26F")

    default.func <- colorRampPalette(default, interpolate = interpolate)

    switch(match.arg(palette),
           default = default.func)
}


