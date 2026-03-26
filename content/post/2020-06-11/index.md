---
title: Creating a hexsticker for the {sparrpowR} package
authors: ["idblr"]
date: '2020-06-11'
slug: hexsticker-sparrpowR
categories: ["R"]
tags: ["R Markdown", "R", "point pattern"]
subtitle: ''
summary: ''
featured: no
image:
  caption: 'Image credit: [**Ian Buller**](/)'
  focal_point: ''
  preview_only: false
projects: []
output:
  blogdown::html_page:
    pandoc_args: ["--lua-filter=external-links.lua"]
---



I present code to create the hexsticker for the [sparrpowR](https://github.com/machiela-lab/sparrpowR) package using the [hexSticker](https://github.com/GuangchuangYu/hexSticker) and [spatstat](https://github.com/spatstat/spatstat) packages. The [sparrpowR](https://github.com/machiela-lab/sparrpowR) calculated the statistical power for a spatial relative risk function from the [sparr](https://github.com/cran/sparr) package. 

<div align="center"><b>Update</b> - 2020-06-15: The <a href="https://github.com/machiela-lab/sparrpowR">sparrpowR</a> sticker is posted in the <a href="https://github.com/GuangchuangYu/hexSticker">hexSticker</a> README.md file </div>


``` r
# Packages
loadedPackages <- c("hexSticker", "spatstat")
invisible(lapply(loadedPackages, require, character.only = TRUE))
set.seed(1234) # for reproducibility
par(pty = "s") # for equal proportions
```

The point pattern to plot within the hexsticker is created using the [spatstat](https://github.com/spatstat/spatstat) package.


``` r
# Create windows for separate point patterns
angle <- pi / 3
x <- c(0, 0.5, 0.5 * cos(angle), 0) + 1
y <- c(0, 0, 0.5 * sin(angle), 0) + 1
y1 <- c(0, 0, 0.5 * -sin(angle), 0) + 1
x2 <- c(1 - 0.33, 1.1, 1.25, 1.6, 1.5 + 0.33, 1 - 0.33)
y2 <- c(1.5, 1, 1.433013, 1, 1.5, 1.5)

# Create point patterns
g1 <- rsyst(nx = 20, win = owin(poly = list(x = x, y = y)))
g2 <- rsyst(nx = 20, win = owin(poly = list(x = rev(x), y = rev(y1))))
g3 <- rpoispp(lambda = 20, win = owin(poly = list(x = x2, y = y2)))

# Set marks for point patterns (for colors)
marks(g1) <- 1
marks(g2) <- 2
marks(g3) <- 1

# Combine point patterns and set marks to be factors
g4 <- superimpose(g1, g2, g3)
marks(g4) <- as.factor(marks(g4))
```

I use the [hexSticker](https://github.com/GuangchuangYu/hexSticker) package to create the hexsticker which layers the sticker elements into a hexagon window. In order to hide points within the `g4` object that reside outside the hexagon window I set the `white_around_sticker` argument as `TRUE`. I choose the [Balance Within](https://www.color-hex.com/color-palette/14625) color palette. 


``` r
# Create hexSticker

hexSticker::sticker(
  ~plot.ppp(
    g4, 
    cols = c("#ee9a00", "#698b69"),
    show.all = F, cex = 0.5,
    pch = c(8, 8)
  ),
  package = "sparrpowR",
  p_size = 5,
  p_color = "#ffe4b5",
  s_x = 0.7, s_y = 0.1,
  s_width = 3.33, s_height = 3.33,
  h_fill = "#344960",
  h_color = "#8b3a3a",
  dpi = 1000,
  white_around_sticker = TRUE
)
```

After removing the white image background in your favorite image editor you can replicate the final hexsticker. 

<img src="/img/sparrpowR.png" width="200" align="center"/>

And when you connect three stickers you can create a larger design:

<img src="/img/sparrpowR3.png" width="400" align="center"/>
