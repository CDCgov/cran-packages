
<!-- README.md is generated from README.Rmd. Please edit that file -->

# cranpackages: Check for CDC contributted R packages in CRAN

<!-- badges: start -->

[![R-CMD-check](https://github.com/CDCgov/cran-packages/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/CDCgov/cran-packages/actions/workflows/R-CMD-check.yaml)
[![Codecov test
coverage](https://codecov.io/gh/CDCgov/cran-packages/graph/badge.svg)](https://app.codecov.io/gh/CDCgov/cran-packages)
<!-- badges: end -->

## Overview

Checks [CRAN](https://cran.r-project.org/) information for packages
authored or maintained by CDC employees, or those that declare CDC
funding. Looks in the undocumented file `packages.rds` as suggested by
[Jeroen Ooms](https://github.com/jeroen) in in [this `stackoverflow`
answer](https://stackoverflow.com/a/8830439). While there is no
guarantee that the file will continue to be available, it exists *at
least* since Jan 2012, when that answer was provided.

Looks for `CDC`, `cdc.gov`, and `Disease Control` in the author and
maintainer fields for all packages listed in CRAN. It does not look for
archived packages.

## Usage

Unless you expect or know the file to have moved locations, the default
`url` should be fine. Unless you want to try different search patterns,
the default `regex` should be fine.

This table was last updated on 2025-12-29 at 02:35 UTC.

``` r
remotes::install_github("CDCgov/cran-packages")

library(package = "cranpackages")

get_cdc_authored()
```

| Package                                                                   | Version  | Date/Publication        | Listed                                                                                     | Role | Comment                                                                                                                                                                                                                                                                                                                                 |
|:--------------------------------------------------------------------------|:---------|:------------------------|:-------------------------------------------------------------------------------------------|:-----|:----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| [bayestransmission](https://CRAN.R-project.org/package=bayestransmission) | 0.1.0    | 2025-12-12 21:10:07 UTC | CDC’s Center for Forecasting and Outbreak Analytics                                        | fnd  | This project was made possible by cooperative agreement CDC-RFA-FT-23-0069 (grant \# NU38FT000009-01-00) from the CDC’s Center for Forecasting and Outbreak Analytics. Its contents are solely the responsibility of the authors and do not necessarily represent the official views of the Centers for Disease Control and Prevention. |
| [branchingprocess](https://CRAN.R-project.org/package=branchingprocess)   | 0.1.0    | 2025-04-25 12:50:05 UTC | Centers for Disease Control and Prevention’s Center for Forecasting and Outbreak Analytics | fnd  | Cooperative agreement CDC-RFA-FT-23-0069                                                                                                                                                                                                                                                                                                |
| [epitraxr](https://CRAN.R-project.org/package=epitraxr)                   | 0.5.0    | 2025-09-14 16:20:02 UTC | Centers for Disease Control and Prevention’s Center for Forecasting and Outbreak Analytics | fnd  | Cooperative agreement CDC-RFA-FT-23-0069                                                                                                                                                                                                                                                                                                |
| [epiworldR](https://CRAN.R-project.org/package=epiworldR)                 | 0.11.0.0 | 2025-12-22 13:30:02 UTC | Centers for Disease Control and Prevention                                                 | fnd  | Award number 1U01CK000585; 75D30121F00003                                                                                                                                                                                                                                                                                               |
| [epiworldRShiny](https://CRAN.R-project.org/package=epiworldRShiny)       | 0.2.3    | 2025-05-14 14:50:02 UTC | Centers for Disease Control and Prevention                                                 | fnd  | Award number 1U01CK000585; 75D30121F00003                                                                                                                                                                                                                                                                                               |
| [facilityepimath](https://CRAN.R-project.org/package=facilityepimath)     | 0.2.1    | 2025-11-07 00:10:02 UTC | Centers for Disease Control and Prevention                                                 | fnd  | Modeling Infectious Diseases in Healthcare Network award number U01CK000585 and Insight Net award number CDC-RFA-FT-23-0069                                                                                                                                                                                                             |
| [gtrendshealth](https://CRAN.R-project.org/package=gtrendshealth)         | 1.0.0    | 2025-06-17 06:10:02 UTC | US Centers for Disease Control and Prevention                                              | cph  |                                                                                                                                                                                                                                                                                                                                         |
| [linkeR](https://CRAN.R-project.org/package=linkeR)                       | 0.1.3    | 2025-10-07 17:10:02 UTC | Centers for Disease Control and Prevention’s Center for Forecasting and Outbreak Analytics | fnd  | Cooperative agreement CDC-RFA-FT-23-0069                                                                                                                                                                                                                                                                                                |
| [LTASR](https://CRAN.R-project.org/package=LTASR)                         | 0.1.4    | 2024-08-22 23:00:02 UTC | Stephen Bertke <sbertke@cdc.gov>                                                           |      |                                                                                                                                                                                                                                                                                                                                         |
| [naaccr](https://CRAN.R-project.org/package=naaccr)                       | 3.1.1    | 2024-09-20 14:20:05 UTC | United States Centers for Disease Control and Prevention                                   | cph  |                                                                                                                                                                                                                                                                                                                                         |
| [nncc](https://CRAN.R-project.org/package=nncc)                           | 2.0.0    | 2024-01-11 14:10:02 UTC | Beau Bruce <lue7@cdc.gov> Zhaohui Cui <nyv5@cdc.gov>                                       | aut  |                                                                                                                                                                                                                                                                                                                                         |
| [PAutilities](https://CRAN.R-project.org/package=PAutilities)             | 1.2.1    | 2025-06-11 15:30:11 UTC | Centers for Disease Control and Prevention                                                 | ctb  |                                                                                                                                                                                                                                                                                                                                         |
| [quadkeyr](https://CRAN.R-project.org/package=quadkeyr)                   | 0.1.0    | 2025-03-24 15:00:02 UTC | CDC’s Center for Forecasting and Outbreak Analytics                                        | fnd  | This project was made possible by cooperative agreement CDC-RFA-FT-23-0069 (grant \# NU38FT000009-01-00) from the CDC’s Center for Forecasting and Outbreak Analytics. Its contents are solely the responsibility of the authors and do not necessarily represent the official views of the Centers for Disease Control and Prevention. |
| [rbranding](https://CRAN.R-project.org/package=rbranding)                 | 0.1.1    | 2025-12-08 23:40:02 UTC | Centers for Disease Control and Prevention’s Center for Forecasting and Outbreak Analytics | fnd  | Cooperative agreement CDC-RFA-FT-23-0069                                                                                                                                                                                                                                                                                                |

# DISCLAIMER

Use of this service is limited only to **non-sensitive and publicly
available data**. Users must not use, share, or store any kind of
sensitive data like health status, provision or payment of healthcare,
Personally Identifiable Information (PII) and/or Protected Health
Information (PHI), etc. under **ANY** circumstance.

Administrators for this service reserve the right to moderate all
information used, shared, or stored with this service at any time. Any
user that cannot abide by this disclaimer and Code of Conduct may be
subject to action, up to and including revoking access to services.

The material embodied in this software is provided to you “as-is” and
without warranty of any kind, express, implied or otherwise, including
without limitation, any warranty of fitness for a particular purpose. In
no event shall the Centers for Disease Control and Prevention (CDC) or
the United States (U.S.) government be liable to you or anyone else for
any direct, special, incidental, indirect or consequential damages of
any kind, or any damages whatsoever, including without limitation, loss
of profit, loss of use, savings or revenue, or the claims of third
parties, whether or not CDC or the U.S. government has been advised of
the possibility of such loss, however caused and on any theory of
liability, arising out of or in connection with the possession, use or
performance of this software.

# MIT License

Copyright (c) 2025 cranpackages authors and the US Centers for Disease
Control and Prevention

Permission is hereby granted, free of charge, to any person obtaining a
copy of this software and associated documentation files (the
“Software”), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be included
in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS
OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
