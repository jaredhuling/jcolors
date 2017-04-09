


# jcolors

[![Build Status](https://travis-ci.org/jaredhuling/jcolors.svg?branch=master)](https://travis-ci.org/road2stat/ggsci)
`jcolors` contains a selection of `ggplot2` color palettes that I like

## Installation


Install `jcolors` from GitHub:


```r
# install.packages("devtools")
devtools::install_github("jaredhuling/jcolors")
```


```r
library(jcolors)
library(ggplot2)
```

```
## Warning: package 'ggplot2' was built under R version 3.3.3
```

```r
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
```

![](vignettes/unnamed-chunk-2-1.png)<!-- -->

```r
pltd + scale_color_jcolors(palette = "default")
```

![](vignettes/unnamed-chunk-2-2.png)<!-- -->

Color palettes can be displayed using `display_jcolors()`


```r
display_jcolors("default")
```

![](vignettes/unnamed-chunk-3-1.png)<!-- -->
