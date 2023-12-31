% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data.R
\docType{data}
\name{cdata}
\alias{cdata}
\title{Simulated competing risks data}
\format{
This data frame contains the following columns:

  \describe{

  \item{\code{ID}}{patient identifier.}
  \item{\code{survtime}}{event time.}

  \item{\code{cmprsk}}{event indicator. \code{0} denotes censoring, \code{1} risk 1, 
  and \code{2} risk 2.}

  \item{\code{var1}}{treatment indicator. \code{0} denotes the placebo group and \code{1} the treatment group.}

  \item{\code{var2}}{continuous variable.}

  \item{\code{var3}}{continuous variable.}
  }
}
\usage{
data(cdata)
}
\description{
The \code{cdata} data frame has 200 rows and 6 columns.
}
\keyword{datasets}
