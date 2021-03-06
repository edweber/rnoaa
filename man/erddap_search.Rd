% Generated by roxygen2 (4.0.2): do not edit by hand
\name{erddap_search}
\alias{erddap_datasets}
\alias{erddap_search}
\title{Search for ERDDAP tabledep or griddap datasets.}
\usage{
erddap_search(query, page = NULL, page_size = NULL, which = "griddap",
  ...)

erddap_datasets(which = "tabledap")
}
\arguments{
\item{query}{(character) Search terms}

\item{page}{(integer) Page number}

\item{page_size}{(integer) Results per page}

\item{which}{(character) One of tabledep or griddap.}

\item{...}{Further args passed on to \code{\link[httr]{GET}} (must be a named parameter)}
}
\description{
Search for ERDDAP tabledep or griddap datasets.
}
\examples{
\dontrun{
(out <- erddap_search(query='temperature'))
out$alldata[[1]]
(out <- erddap_search(query='size'))
out$info

# List datasets
head( erddap_datasets('table') )
head( erddap_datasets('grid') )
}
}
\author{
Scott Chamberlain <myrmecocystus@gmail.com>
}
\references{
\url{http://upwell.pfeg.noaa.gov/erddap/index.html}
}

