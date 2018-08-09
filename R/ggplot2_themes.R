
theme_dark_bg_base <- function(base_size = 12, base_family = "sans",
                               base_line_size = base_size / 22,
                               base_rect_size = base_size / 22)
{
    relsize <- sapply(as.numeric(size_list), `/`,
                      y = as.numeric(size_list$normalsize))
    names(relsize) <- names(size_list)

    half_line <- base_size * 0.5

    theme(line = element_line(size     = base_line_size,
                              linetype = 1,
                              lineend  = "butt",
                              colour   = "grey80"),
          rect = element_rect(size     = base_rect_size,
                              linetype = 1,
                              fill     = NA,
                              colour   = "grey80"),
          text = element_text(family = base_family,
                              face   = "plain",
                              colour = "grey80",
                              size   = base_size,
                              angle  = 0,
                              hjust  = 0.5,
                              vjust  = 0.5,
                              lineheight = 1,
                              margin     = margin(),
                              debug      = FALSE),
          title = element_text(),
                                ##  Axis
          #axis.line            = element_line(),
          axis.text            = element_text(size   = rel(relsize["small"])),
          axis.ticks           = element_line(),
          axis.title           = element_text(size   = rel(relsize["large"])),
          axis.title.x         = element_text(margin = margin((10/6) * half_line,0,0,0)),
          axis.title.y         = element_text(angle  = 90,
                                              margin = margin(0,(10/6) * half_line,0,0)),
          axis.ticks.length    =  unit(half_line / 2, "pt"),
                                ##  Legend
          legend.background    = element_blank(),
          legend.spacing       = unit(1.2 / 100, "npc"),
          legend.key           = element_blank(),
          legend.key.size      = unit(1.2, "lines"),
          legend.key.height    = NULL,
          legend.key.width     = NULL,
          legend.text          = element_text(size = rel(relsize["small"])),
          legend.text.align    = NULL,
          legend.title         = element_text(size  = rel(relsize["large"]),
                                              hjust = 0),
          legend.title.align   = 0.5,
          legend.position      = "bottom",
          legend.direction     = "horizontal",
          legend.justification = "center",
          legend.box = "vertical",
                                ## plotting region
          panel.background = element_rect(fill     = alpha('grey80', 0.05),
                                          linetype = 0),
          panel.border     = element_blank(),
          panel.grid.major = element_line(colour = "grey50", size = 0.35),
          panel.grid.minor = element_line(colour = "grey30", size = 0.2),
          panel.spacing    = unit(half_line, "pt"),
          panel.spacing.x  = NULL,
          panel.spacing.y  = NULL,
          panel.ontop      = FALSE,
                                ## facetting options
          strip.background  = element_blank(),
          strip.text        = element_text(size = rel(relsize["large"])),
          strip.text.x      = element_text(margin = margin(0, 0, (5/6) * half_line, 0)),
          strip.text.y      = element_text(angle  = -90,
                                           margin = margin(0, half_line, 0, (5/6) * half_line )),
          strip.placement   = "inside",
          strip.placement.x = NULL,
          strip.placement.y = NULL,
          strip.switch.pad.grid = unit(half_line / 2, "pt"),
          strip.switch.pad.wrap = unit(half_line / 2, "pt"),
          plot.background   = element_blank(),
          plot.title = element_text(size   = rel(relsize["Large"]),
                                    hjust  = 0.5,
                                    margin = margin(0,0,5,0)),
          plot.subtitle =      element_text( # font size "regular"
              hjust = 0, vjust = 1,
              margin = margin(b = half_line)
          ),
          plot.caption =       element_text( # font size "small"
              size = rel(0.8),
              hjust = 1, vjust = 1,
              margin = margin(t = half_line)
          ),
          plot.tag =           element_text(
              size = rel(1.2),
              hjust = 0.5, vjust = 0.5
          ),
          plot.tag.position =  'topleft',
          plot.margin       = margin(half_line, half_line, half_line, half_line),
          complete = TRUE)
}


#' minimal theme for dark backgrounds
#'
#' @inheritParams ggplot2::theme_bw
#' @export
#' @rdname theme_jcolors
#' @examples
#' library(ggplot2)
#'
#' p <- ggplot(mtcars) + geom_point(aes(x = wt, y = mpg,
#'          colour = factor(gear))) + facet_grid(vs~am)
#' p + theme_dark_bg()
#'
theme_dark_bg <- function(base_size   = 12,
                          base_family = "sans",
                          base_line_size = base_size / 22,
                          base_rect_size = base_size / 22)
{
    theme_dark_bg_base(base_size      = eval(base_size),
                       base_family    = base_family,
                       base_line_size = base_line_size,
                       base_rect_size = base_rect_size)
}


#' minimal theme for light backgrounds
#'
#' @inheritParams ggplot2::theme_bw
#' @export
#' @rdname theme_jcolors
#' @import ggplot2
#' @examples
#'
#' p <- ggplot(mtcars) + geom_point(aes(x = wt, y = mpg,
#'          colour = factor(gear))) + facet_grid(vs~am)
#' p + theme_light_bg()
#'
theme_light_bg <- function(base_size  = 12,
                           base_family = "sans",
                           base_line_size = base_size / 22,
                           base_rect_size = base_size / 22)
{
    theme_dark_bg_base(base_size      = eval(base_size),
                       base_family    = base_family,
                       base_line_size = base_line_size,
                       base_rect_size = base_rect_size) +
        theme(
            line             = element_line(colour = "grey10"),
            rect             = element_rect(colour = "grey10"),
            text             = element_text(colour = "grey10"),
            panel.background = element_rect(fill     = alpha('grey90', 0.075)),
            panel.grid.major = element_line(colour = "grey90", size = 0.35),
            panel.grid.minor = element_line(colour = "grey98", size = 0.2)
        )
}





size_list <- list(HUGE         = 28,
                  Huge         = 24.88,
                  huge         = 20.74,
                  LARGE        = 17.28,
                  Large        = 14.4,
                  large        = 12,
                  normalsize   = 10,
                  small        = 9,
                  footnotesize = 8,
                  scriptsize   = 7,
                  tiny         = 5,
                  verytiny     = 2.5,
                  zero         = 0)

