% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_cdc_authored.R
\name{get_cdc_authored}
\alias{get_cdc_authored}
\title{Find US CDC authored packages in CRAN}
\usage{
get_cdc_authored(
  url = "http://cran.r-project.org/web/packages/packages.rds",
  regex = "Disease Control|CDC|cdc[.]gov",
  redirect = FALSE,
  path = NULL
)
}
\arguments{
\item{url}{Required. Location to use when searching for \code{packages.rds}.}

\item{regex}{Regular expression to match CDC authored packages.}

\item{redirect}{Redirect if the server responds with a new address.}

\item{path}{Destination for the temporary file.
Defaults to the expected location of
\url{http://cran.r-project.org/web/packages/packages.rds}.}
}
\value{
Returns the url if the file is found, otherwise returns an error.
}
\description{
Checks in the undocumented CRAN file \code{packages.rds} for
packages that might be authored or maintained by US CDC employees, or that
declare US CDC funding.
}
\examples{
get_cdc_authored()

}
