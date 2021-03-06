% Generated by roxygen2 (4.0.2): do not edit by hand
\name{ncdc_legacy}
\alias{ncdc_leg_sites}
\alias{ncdc_leg_variables}
\alias{ncdc_legacy}
\title{Search the NOAA NCDC legacy API - main purpose to get ISD daily data.}
\usage{
ncdc_leg_variables(dataset = "isd", variable = NULL, token = NULL, ...)

ncdc_leg_sites(dataset = "isd", state_id = NULL, state_abbrev = NULL,
  country_id = NULL, country_abbrev = NULL, token = NULL, ...)
}
\arguments{
\item{dataset}{Dataset id, default: isd}

\item{variable}{Variable to get.}

\item{token}{Your token. Store as environment variable as NOAA_LEG_TOKEN or option variable
as noaalegtoken.}

\item{...}{Further args passed to \code{\link[httr]{GET}}}

\item{state_id}{State ID}

\item{state_abbrev}{State abbreviation}

\item{country_id}{Country id}

\item{country_abbrev}{Country abbreviation}
}
\description{
Search the NOAA NCDC legacy API - main purpose to get ISD daily data.
}
\examples{
\donttest{
ncdc_leg_variables()
ncdc_leg_variables(variable = 'TMP')
ncdc_leg_variables(variable = 474)
head( ncdc_leg_sites() )

# Site information
ncdc_leg_sites(country_id = 1)
ncdc_leg_sites(country_abbrev = 'US')
ncdc_leg_sites(state_id = 11)
ncdc_leg_sites(state_abbrev = 'HI')
}
}

