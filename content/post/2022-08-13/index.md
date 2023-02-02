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
lastmod: '2023-02-01T9:30:04-04:00'
featured: no
image: 
  caption: 'Image credit: [**Ian Buller**](/)'
  focal_point: ''
  preview_only: no
projects: []
---

My fourth R package is on [CRAN](https://cran.r-project.org/) named [ndi](https://CRAN.R-project.org/package=ndi). It computes various geospatial neighborhood deprivation indices (NDI) and other metrics of social vulnerability in the United States. 

Two types of NDI are available in the initial version: 

1. based on [Messer et al. (2006)](https://doi.org/10.1007/s11524-006-9094-x)
2. based on [Andrews et al. (2020)](https://doi.org/10.1080/17445647.2020.1750066) and [Slotman et al. (2022)](https://doi.org/10.1016/j.dib.2022.108002) who use variables chosen by [Roux and Mair (2010)](https://doi.org/10.1111/j.1749-6632.2009.05333.x). 

Both are a decomposition of various demographic characteristics from the U.S. Census Bureau American Community Survey 5-year estimates (ACS-5; 2010-2020) pulled by the [tidycensus](https://CRAN.R-project.org/package=tidycensus) package.

**Update** - 2022-08-15: The package computes two additional metrics using ACS-5 data (2009-2020) that account for values in nearby (i.e., adjacent) census geographies (i.e., census tracts or counties): 

1. the spatial Racial Isolation Index (RI) based on [Anthopolos et al. (2011)](https://www.doi.org/10.1016/j.sste.2011.06.002)
2. the spatial Educational Isolation Index (EI) based on [Bravo et al. (2021)](https://www.doi.org/10.3390/ijerph18179384)

And retrieves the Gini Index based on [Gini (1921)](https://www.doi.org/10.2307/2223319).

**Update** - 2022-08-18: The package link was added to the [NCI](https://www.cancer.gov/) [GIS Portal for Cancer Research](https://gis.cancer.gov/) [Accumulating Data to Optimally Predict Obesity Treatment (ADOPT) Core Measures](https://www.nhlbi.nih.gov/science/adopt) [Environmental Domain site](https://gis.cancer.gov/research/adopt.html) under the "Socioeconomic Deprivation" tab.

**Update** - 2022-10-01: The package computes an additional metric using ACS-5 data (2009-2020) to compute the Index of Concentration at the Extremes (ICE) based on [Feldman et al. (2015)](https://www.doi.org/10.1136/jech-2015-205728) and [Krieger et al. (2016)](https://www.doi.org/10.2105/AJPH.2015.302955)

**Update** - 2022-12-01: The package computes an additional metric using ACS-5 data (2009-2020) to compute the Dissimilarity Index (DI) based on [Duncan & Duncan (1955)](https://doi.org/10.2307/2088328)

**Update** - 2023-02-01: The package computes two additional metrics using ACS-5 data (2009-2020): 

1. the aspatial income or racial/ethnic Atkinson Index (AI) based on [Atkinson (1970)](https://doi.org/10.1016/0022-0531(70)90039-6) for specified counties/tracts 2009 onward
2. the aspatial racial/ethnic Isolation Index (II) based on Shevky & Williams (1949; ISBN-13:978-0837156378) and [Bell (1954)](https://doi.org/10.2307/2574118)
3. the aspatial racial/ethnic Correlation Ratio (V) based on [Bell (1954)](https://doi.org/10.2307/2574118) and [White (1986)](https://doi.org/10.2307/3644339)
4. the aspatial racial/ethnic Location Quotient (LQ) based on [Merton (1939)](https://doi.org/10.2307/2084686) and [Sudano et al. (2013)](https://doi.org/10.1016/j.healthplace.2012.09.015)
5. the aspatial racial/ethnic Local Exposure and Isolation metric (LEx/Is) based on [Bemanian & Beyer (2017)](https://doi.org/10.1158/1055-9965.EPI-16-0926)
