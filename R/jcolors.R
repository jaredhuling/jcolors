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
#' plot(0, 0, type = "n", xlab = "", ylab = "", xlim = c(0, 6), ylim = c(4, 0), yaxs = "i",
#'      xaxt = "n", yaxt = "n", xaxs = "i")
#' axis(side=3, at=1:3, c("default", "pal2", "pal3"), las=1)
#'
#' def <- jcolors("default")
#' points(seq(along = def), rep(1, length(def)), pch = 22, bg = def, cex = 8)
#' pal2 <- jcolors("pal2")
#' points(seq(along = pal2), rep(2, length(pal2)), pch = 22, bg = pal2, cex = 8)
#' pal3 <- jcolors("pal3")
#' points(seq(along = pal3), rep(3, length(pal3)), pch = 22, bg = pal3, cex = 8)
jcolors <- function(palette = c("default",
                                "pal2",
                                "pal3",
                                "pal4",
                                "pal5",
                                "pal6",
                                "pal7",
                                "pal8",
                                "pal9",
                                "pal10",
                                "pal11",
                                "pal12",
                                "rainbow"))
{



    default <- c(## 'plum'               = "#963484",
                 'kelly_green'        = "#29BF12",
                 'rich_electric_blue' = "#00A5CF",
                 ## 'cornell_red'        = "#A8201A",
                 'maximum_red'        = "#DE1A1A",
                 ## 'persian_indigo'     = "#22007C",
                 'majorelle_blue'     = "#574AE2",
                 ## 'deep_saffron'       = "#F39237"
                 'fluorescent_orange' = "#FFBF00"
                 )

    highlight <- c('highlight' = "yellow")


    pal2 <- c('blue_yonder'    = "#3E71A8",
              ## 'mustard'        = "#FEF735",
              'arctic_lime'    = "#CEFF1A",
              ## 'dark_byzantium' = "#5F3659",
              'mardi_gras'     = "#870E75",
              ## 'vivid_gamboge'  = "#FE9300",
              'safety_orange'  = "#FE6900",
              'tiffany_blue'   = "#0BB19F")


    ## 'charleston_green' = "#2D2A32"
    pal3 <- c('chartreuse3'        = "#66CD00", # chartreuse3
              'deepskyblue3'       = "#009ACD", # deepskyblue3
              'orangered'          = "#FF4500", # orangered
              'darkorchid4'        = "#9A32CD", # darkorchid3 (darkorchid4 = #68228B, darkorchi1 = #BF3EFF)
              'titanium_yellow'    = "#F5E400")
            ## 'arctic_lime'        = "#CEFF1A")
            ## 'mikado_yellow'      = "#FFBE0B")
            ## 'ucla_gold'          = "#FFAE03")
            ## 'yellow'        = "#FFFF00") # yellow

    earthen <- c('marble'       = "#2C3524",
                 'top_sky'      = "#2E79BF",
                 'granite'      = "#CEC3AE",
                 'wood'         = "#5B5121",
                 'shade'        = "#62646C",
                 ## 'grass_in_sun' = "#536D1B",
                 'reflection'   = "#D3AB4C")


    pal4 <- c(## 'boston_university_red'  = "#D00000",
              ## 'yankees_blue'   = "#1B1F3A",
              'yankees_blue'   = "#202547",
              'purple_taupe'   = "#53354A",
              'deep_taupe'     = "#7A6C5D",
              'raspberry'      = "#BE3144",
              'mango'          = "#FF7844",
              'straw'          = "#E3D26F")

    pal5 <- c(## 'mughal_green'     = "#306B34",
              'steel_teal'       = "#628395",
              'june_bud'         = "#C5D86D",
              'cherry'           = "#DB2763",
              'st_patricks_blue' = "#17377A",
              'orioles_orange'   = "#FC471E",
              'turquoise'        = "#55DDE0")



    pal6 <- c('rackley'          = "#558aa6",
              'dark_goldenrod'   = "#B1740F",
              'rubine_red'       = "#D5006A",
              'midnight_green'   = "#08585A",
              'canary'           = "#FFFD98",
              'dark_orchid'      = "#9449d2",
              'dark_khaki'       = "#BBBE64",
              'rusty_red'        = "#D7263D")

    pal7 <- c("very_dark_blue" = "#1d3554", #"#101D2E",
              "very_soft_yellow"            = "#DFE07C",
              "dark_moderate_yellow"        = "#7F8E39",
              "dark_moderate_cyan"          = "#42858C",
              "vivid_orange"                = "#E48F1B",
              "very_dark_pink"              = "#570D32",
              "vivid_yellow"                = "#E5C616",
              "moderate_red"                = "#D33B44")

    pal8 <- c("moderate_violet"             = "#943CB4",
              "very_dark_cyan"              = "#194D44",
              "slightly_desaturated_yellow" = "#C6CF6E",
              "moderate_blue"               = "#5B6DC8",
              "dark_moderate_lime_green"    = "#3CA437",
              "very_dark_pink"              = "#6B244C",
              "slightly_desaturated_cyan"   = "#6ACDC5",
              'maximum_red'                 = "#DE1A1A",
              "moderate_yellow"             = "#BBB53E",
              "dark_moderate_blue"          = "#2A297A",
              "dark_moderate_orange"        = "#995533",
              "very_soft_magenta"           = "#D590DA")

    pal9 <- c("#273B5B",
              "#C1C243",
              "#E73E26",
              "#2E6657",
              "#E8F5B3",
              "#24A99C")

    pal10 <- c('#3e71a8',
               '#577f9f',
               '#698e96',
               '#779d8d',
               '#84ad83',
               '#8fbd77',
               '#99cd6b',
               '#a2dd5c',
               '#aaee49',
               '#b2ff2e')

    pal11 <- c('#202547',
               '#323649',
               '#41474b',
               '#4e5a4c',
               '#5c6c4c',
               '#68804c',
               '#75944b',
               '#81a949',
               '#8ebe45',
               '#9ad340',
               '#a6e939',
               '#b2ff2e')

    pal12 <- c('#202547',
               '#43444a',
               '#5f654a',
               '#7b8948',
               '#97b043',
               '#b2d736',
               '#ceff1a',
               '#d8e01b',
               '#dfc11b',
               '#e2a11b',
               '#e37f1b',
               '#e1581a',
               '#de1a1a')

    rainbow <- c('rosso_corsa'          = "#D12600",
                 'spanish_orange'       = "#DB6A00",
                 'green_yellow'         = "#B2FF2E",
                 'green'                = "#00AD00",
                 'pale_cerulean'        = "#9CCADE",
                 'sea_blue'             = "#005B94",
                 'st_patricks_blue'     = "#1E2085",
                 'tyrian_purple'        = "#610052",
                 'amaranth_deep_purple' = "#953272")

    rainbow2 <- c('rosso_corsa'          = "#D12600",
                  'spanish_orange'       = "#DB6A00",
                  'green_yellow'         = "#B2FF2E",
                  'green'                = "#00AD00",
                  'pale_cerulean'        = "#9CCADE",
                  'sea_blue'             = "#005B94",
                  'st_patricks_blue'     = "#1E2085",
                  'tyrian_purple'        = "#610052",
                  'amaranth_deep_purple' = "#953272")

    switch(match.arg(palette),
           default = default,
           pal2    = pal2,
           pal3    = pal3,
           pal4    = pal4,
           pal5    = pal5,
           pal6    = pal6,
           pal7    = pal7,
           pal8    = pal8,
           pal9    = pal9,
           pal10   = pal10,
           pal11   = pal11,
           pal12   = pal12,
           rainbow = rainbow,
           earthen = earthen)
}


# display.jcolors
#' Display jcolors
#'
#' displays the discrete jcolors palettes
#'
#' @param palette Character string indicating a palette of colors.
#' @export
#' @importFrom grDevices rgb2hsv
#' @importFrom graphics image
#' @importFrom graphics text
#' @importFrom graphics par
#' @examples
#' display_jcolors()
display_jcolors <- function(palette = c("default",
                                        "pal2",
                                        "pal3",
                                        "pal4",
                                        "pal5",
                                        "pal6",
                                        "pal7",
                                        "pal8",
                                        "pal9",
                                        "pal10",
                                        "pal11",
                                        "pal12",
                                        "rainbow"))
{
    palette <- match.arg(palette)
    jcols   <- jcolors(palette)
    n       <- length(jcols)
    cnames  <- names(jcols)
    image(1:n, 1, as.matrix(1:n),
          col  = jcols,
          xlab = "", ylab = "",
          xaxt = "n", yaxt = "n", bty = "n")
    text(1:n, par("usr")[1] - 0.025,
         srt = 45, adj = 0.5,
         labels = cnames, xpd = TRUE)
}

# display all jcolors
#' Display all jcolors
#'
#' Creates different vectors of related colors that may be useful for figures.
#'
#' @export
#' @importFrom grDevices rgb2hsv
#' @importFrom graphics rect
#' @importFrom graphics axis
#' @importFrom graphics plot
#' @examples
#' display_all_jcolors()
display_all_jcolors <- function()
{
    palette <- c("default",
                 "pal2",
                 "pal3",
                 "pal4",
                 "pal5",
                 "pal6",
                 "pal7",
                 "pal8",
                 "pal9",
                 "pal10",
                 "pal11",
                 "pal12",
                 "rainbow")
    jcols    <- sapply(palette, jcolors)
    maxlen   <- max(sapply(jcols, length))
    ncols    <- length(jcols)


    plot(0, 0, type = "n", xlab = "", ylab = "", xlim = c(0, maxlen + 1),
         ylim = c((ncols + 1) * 2, 0), yaxs = "i",
         xaxt = "n", yaxt = "n", xaxs = "i")

    yseq <- seq(2, ncols * 2, length.out = ncols)

    axis(side = 2, at = yseq, palette, las = 1)

    for (c in 1:ncols)
    {
        pal <- jcolors(palette[c])
        #points(seq(along = pal), rep(yseq[c], length(pal)), pch = 22, bg = pal, cex = 6)
        rect(xleft   = seq(along = pal) - 0.5,
             ybottom = yseq[c] - 0.85,
             xright  = seq(along = pal) + 0.5,
             ytop    = yseq[c] + 0.85,
             border  = NA,
             lwd     = 0,
             col     = pal)
    }
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
scale_color_jcolors = function (palette = c("default",
                                            "pal2",
                                            "pal3",
                                            "pal4",
                                            "pal5",
                                            "pal6",
                                            "pal7",
                                            "pal8",
                                            "pal9",
                                            "pal10",
                                            "pal11",
                                            "pal12",
                                            "rainbow"),
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
scale_fill_jcolors = function (palette = c("default",
                                           "pal2",
                                           "pal3",
                                           "pal4",
                                           "pal5",
                                           "pal6",
                                           "pal7",
                                           "pal8",
                                           "pal9",
                                           "pal10",
                                           "pal11",
                                           "pal12",
                                           "rainbow"),
                               ...)
{
    palette <- match.arg(palette)
    discrete_scale("fill",
                   "jcolors",
                   manual_pal(unname(jcolors(palette))),
                   ...)
}



