---
title: New CRAN Package {ndi}
author: ~
date: '2022-08-13'
slug: cran-ndi
categories: ["R"]
tags: ["deprivation", "R", "CRAN", "census", "principal component analysis", "socio-economic indicators"]
subtitle: ''
summary: ''
authors: []
lastmod: '2022-08-13T9:30:04-04:00'
featured: no
image: 
  caption: 'Image credit: [**Ian Buller**](/)'
  focal_point: ''
  preview_only: no
projects: []
---

My fourth R package is on [CRAN](https://cran.r-project.org/) named [ndi](https://CRAN.R-project.org/package=ndi). It computes various geospatial neighborhood deprivation indices (NDI) and other metrics of social vulnerability in the United States. Two types of NDI are available in the initial repository: (1) based on [Messer et al. (2006)](https://doi.org/10.1007/s11524-006-9094-x) and (2) based on [Andrews et al. (2020)](https://doi.org/10.1080/17445647.2020.1750066) and [Slotman et al. (2022)](https://doi.org/10.1016/j.dib.2022.108002) who use variables chosen by [Roux and Mair (2010)](https://doi.org/10.1111/j.1749-6632.2009.05333.x). Both are a decomposition of various demographic characteristics from the U.S. Census Bureau American Community Survey 5-year estimates (ACS-5; 2010-2020) pulled by the [tidycensus](https://CRAN.R-project.org/package=tidycensus) package.
