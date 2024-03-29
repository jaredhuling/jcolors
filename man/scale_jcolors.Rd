% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/contin_jcolors.R, R/jcolors.R
\name{scale_color_jcolors_contin}
\alias{scale_color_jcolors_contin}
\alias{scale_colour_jcolors_contin}
\alias{scale_fill_jcolors_contin}
\alias{scale_color_jcolors}
\alias{scale_colour_jcolors}
\alias{scale_fill_jcolors}
\title{continuous jcolors color scales}
\usage{
scale_color_jcolors_contin(
  palette = c("default", "pal2", "pal3", "pal4", "pal10", "pal11", "pal12", "rainbow"),
  ...
)

scale_colour_jcolors_contin(
  palette = c("default", "pal2", "pal3", "pal4", "pal10", "pal11", "pal12", "rainbow"),
  ...
)

scale_fill_jcolors_contin(
  palette = c("default", "pal2", "pal3", "pal4", "pal10", "pal11", "pal12", "rainbow"),
  ...
)

scale_color_jcolors(
  palette = c("default", "pal2", "pal3", "pal4", "pal5", "pal6", "pal7", "pal8", "pal9",
    "pal10", "pal11", "pal12", "rainbow"),
  ...
)

scale_colour_jcolors(
  palette = c("default", "pal2", "pal3", "pal4", "pal5", "pal6", "pal7", "pal8", "pal9",
    "pal10", "pal11", "pal12", "rainbow"),
  ...
)

scale_fill_jcolors(
  palette = c("default", "pal2", "pal3", "pal4", "pal5", "pal6", "pal7", "pal8", "pal9",
    "pal10", "pal11", "pal12", "rainbow"),
  ...
)
}
\arguments{
\item{palette}{Character string indicating a palette of colors.}

\item{...}{additional parameters for \code{\link[ggplot2]{discrete_scale}}}
}
\description{
continuous jcolors color scales

jcolors color scales
}
\examples{
library(ggplot2)

plt <- ggplot(data.frame(x = rnorm(10000), y = rexp(10000, 1.5)), aes(x = x, y = y)) +
   geom_hex() + coord_fixed()

plt + scale_fill_jcolors_contin() + theme_bw()

plt + scale_fill_jcolors_contin("pal2", bias = 1.5) + theme_bw()

plt + scale_fill_jcolors_contin("pal3") + theme_bw()


library(ggplot2)
data(morley)

pltl <- ggplot(data = morley, aes(x = Run, y = Speed,
group = factor(Expt),
colour = factor(Expt))) +
    geom_line(size = 2) +
    theme_bw() +
    theme(panel.background = element_rect(fill = "grey97"),
          panel.border = element_blank())

pltd <- ggplot(data = morley, aes(x = Run, y = Speed,
group = factor(Expt),
colour = factor(Expt))) +
    geom_line(size = 2) +
    theme_bw() +
    theme(panel.background = element_rect(fill = "grey15"),
          panel.border = element_blank(),
          panel.grid.major = element_line(color = "grey45"),
          panel.grid.minor = element_line(color = "grey25"))

pltl + scale_color_jcolors(palette = "default")

pltd + scale_color_jcolors(palette = "default")


}
