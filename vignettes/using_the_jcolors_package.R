## ---- eval = FALSE-------------------------------------------------------
#  install.packages("devtools")
#  devtools::install_github("jaredhuling/jcolors")

## ----eval = TRUE, message = FALSE, warning = FALSE-----------------------
library(jcolors)

jcolors('default')


## ----displayall, fig.height = 8------------------------------------------
display_all_jcolors()

## ----contin_example_display, fig.height = 8------------------------------
display_all_jcolors_contin()

## ----eval = TRUE, message = FALSE, warning = FALSE-----------------------
library(ggplot2)
library(gridExtra)

data(morley)

pltl <- ggplot(data = morley, aes(x = Run, y = Speed,
group = factor(Expt),
colour = factor(Expt))) +
    geom_line(size = 2) +
    theme_bw() +
    theme(panel.background = element_rect(fill = "grey97"),
          panel.border = element_blank(),
          legend.position = "bottom")

pltd <- ggplot(data = morley, aes(x = Run, y = Speed,
group = factor(Expt),
colour = factor(Expt))) +
    geom_line(size = 2) +
    theme_bw() +
    theme(panel.background = element_rect(fill = "grey15"),
          legend.key = element_rect(fill = "grey15"),
          panel.border = element_blank(),
          panel.grid.major = element_line(color = "grey45"),
          panel.grid.minor = element_line(color = "grey25"),
          legend.position = "bottom")

grid.arrange(pltl + scale_color_jcolors(palette = "default"),
             pltd + scale_color_jcolors(palette = "default"), ncol = 2)

grid.arrange(pltl + scale_color_jcolors(palette = "pal2"),
             pltd + scale_color_jcolors(palette = "pal2"), ncol = 2)




## ------------------------------------------------------------------------
display_jcolors("default")

## ----moreplots-----------------------------------------------------------
grid.arrange(pltl + scale_color_jcolors(palette = "pal3"),
             pltd + scale_color_jcolors(palette = "pal3"), ncol = 2)

grid.arrange(pltl + scale_color_jcolors(palette = "pal4"),
             pltd + scale_color_jcolors(palette = "pal4") + 
                 theme(panel.background = element_rect(fill = "grey5")), ncol = 2)

grid.arrange(pltl + scale_color_jcolors(palette = "pal5"),
             pltd + scale_color_jcolors(palette = "pal5"), ncol = 2)


pltd <- ggplot(data = OrchardSprays, aes(x = rowpos, y = decrease,
group = factor(treatment),
colour = factor(treatment))) +
    geom_line(size = 2) +
    geom_point(size = 4) +
    theme_bw() +
    theme(panel.background = element_rect(fill = "grey15"),
          legend.key = element_rect(fill = "grey15"),
          panel.border = element_blank(),
          panel.grid.major = element_line(color = "grey45"),
          panel.grid.minor = element_line(color = "grey25"),
          legend.position = "bottom")


pltd + scale_color_jcolors(palette = "pal6")


## ----contin_example, fig.height = 8--------------------------------------
display_all_jcolors_contin()

## ----mountain_ex, fig.height=6-------------------------------------------
set.seed(42)
plt <- ggplot(data.frame(x = rnorm(10000), y = rexp(10000, 1.5)), aes(x = x, y = y)) +
      geom_hex() + coord_fixed() + theme(legend.position = "bottom")

plt2 <- plt + scale_fill_jcolors_contin("pal2", bias = 1.75) + theme_bw()
plt3 <- plt + scale_fill_jcolors_contin("pal3", reverse = TRUE, bias = 2.25) + theme_bw()
grid.arrange(plt2, plt3, ncol = 2)

