


# jcolors

[![Build Status](https://travis-ci.org/jaredhuling/jcolors.svg?branch=master)](https://travis-ci.org/jaredhuling/jcolors)

`jcolors` contains a selection of `ggplot2` color palettes that I like

## Installation


Install `jcolors` from GitHub:


```r
install.packages("devtools")
devtools::install_github("jaredhuling/jcolors")
```

Access the `jcolors` color palettes with `jcolors()`:


```r
library(jcolors)

jcolors('default')
```

```
##  chartreuse3 deepskyblue3    orangered  darkorchid4       yellow 
##    "#66CD00"    "#009ACD"    "#FF4500"    "#9A32CD"    "#FFFF00"
```


Now use `scale_color_jcolors()` with `ggplot2`:


```r
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

pltl + scale_color_jcolors(palette = "pal2")
```

![](vignettes/unnamed-chunk-3-1.png)<!-- -->

```r
pltd + scale_color_jcolors(palette = "default")
```

![](vignettes/unnamed-chunk-3-2.png)<!-- -->

Color palettes can be displayed using `display_jcolors()`

## default

```r
display_jcolors("default")
```

![](vignettes/unnamed-chunk-4-1.png)<!-- -->

## pal2

```r
display_jcolors("pal2")
```

![](vignettes/unnamed-chunk-5-1.png)<!-- -->
