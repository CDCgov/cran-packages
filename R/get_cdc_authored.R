#' Find US CDC authored packages in CRAN
#'
#' @description Checks in the undocumented CRAN file \code{packages.rds} for
#' packages that might be authored or maintained by US CDC employees, or that
#' declare US CDC funding.
#'
#' @param url Required. Location to use when searching for \code{packages.rds}.
#' @param regex Regular expression to match CDC authored packages.
#' @param redirect Redirect if the server responds with a new address.
#' @param path Destination for the temporary file.
#' Defaults to the expected location of
#' \url{http://cran.r-project.org/web/packages/packages.rds}.
#' 
#' @returns Returns the url if the file is found, otherwise returns an error.
#' 
#' @examples
#' get_cdc_authored()
#'
#' @importFrom utils download.file
#'
#' @export

get_cdc_authored <- function(
    url = "http://cran.r-project.org/web/packages/packages.rds",
    regex = "Disease Control|CDC|cdc[.]gov",
    redirect = FALSE,
    path = NULL
){
  # check if the file is available
  url <- check_for_packagesrds(url)
  
  path <- if(is.null(path)) tempdir() else path
  
  # don't redirect
  extra <- if(!redirect) "--max-redirect=0"
  
  cran_file <- file.path(path, "cran_file")
  
  if(!file.exists(cran_file)){
    download.file(url = url, destfile = cran_file, extra = extra)
  }
  
  cran_packages <- as.data.frame(readRDS(cran_file), row.names=NA)
  
  # add a url
  cran_packages$CRAN_URL <- paste0(
    "https://CRAN.R-project.org/package=",
    cran_packages$Package
  )
  
  cdc_packages <- subset(
    cran_packages,
    
    # look for the obvious signs
    subset = grepl(
      regex,
      paste(Author, Maintainer)
    ),
    
    # keep only the most relevant information
    select = c("Package", "Version", "Date/Publication", "CRAN_URL")
  )
  
  rownames(cdc_packages) <- NULL
  
  # add class tibble for convenience, in case user relies on the tidyverse
  class(cdc_packages) <- c("tbl_df", "tbl", class(cdc_packages))
  
  return(cdc_packages)
}

  
  
  
#' Check for the CRAN packages records
#'
#' @description Checks if the \code{packages.rds} file is available in CRAN.
#'
#' @param url Required. Location to use when searching for \code{packages.rds}.
#' Defaults to the expected location of
#' \url{http://cran.r-project.org/web/packages/packages.rds}.
#' 
#' @returns Returns the url if the file is found, otherwise returns an error.
#' 
#' @examples
#' check_for_packagesrds()
#'
#' @export

check_for_packagesrds <- function(
    url = "http://cran.r-project.org/web/packages/packages.rds"
){
  # check for a valid url
  if(!is.character(url)) stop("url should be a character.")
  if(length(url) != 1) stop("A single url should be provided.")
  if(!grepl("^http", url)) stop("Invalid url: ", url)
  
  # check the status of the file request
  # 200 means that the file is available
  headers <- curlGetHeaders(url, redirect = FALSE)
  
  status <- as.character(attr(headers, "status"))
  
  available = switch (status,
    "200" = url,
    "301" = stop(
      "The file has moved.\nUse redirect=TRUE",
      call. = FALSE
    ),
    "404" = stop(
      "\nThe file has moved to Atlanta, GA\n404: Not found.",
      call. = FALSE
    )
  )
  
  return(available)
}


# declare the binding for the data.frame variables
globalVariables(c("Author", "Maintainer"))
