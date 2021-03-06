\name{ndays}
\alias{nseconds}
\alias{nminutes}
\alias{nhours}
\alias{ndays}
\alias{nweeks}
\alias{nmonths}
\alias{nquarters}
\alias{nyears}
\title{ Number of Periods in Data }
\description{
Calculate the number of specified periods in a given
time series like data object.
}
\usage{
nseconds(x)
nminutes(x)
nhours(x)
ndays(x)
nweeks(x)
nmonths(x)
nquarters(x)
nyears(x)
}
\arguments{
  \item{x}{ A time-based object }
}
\details{
Essentially a wrapper to \code{endpoints} with the appropriate
period specified; the resulting value derived from counting the
endpoints

As a compromise between simplicity and accuracy, the results will always
round up to the nearest complete period. So n**** - 1 will return
the completed periods.

For finer grain detail one should call
a higher frequency n**** function.

An alternative summary can be found with \code{periodicity}
and \code{unclass(periodicity(x))}.
}
\value{
The number of observations for the period type specified
}
\author{ Jeffrey A. Ryan }
\seealso{ \code{\link{endpoints}} }
\examples{
\dontrun{
getSymbols("QQQQ")

ndays(QQQQ)
nweeks(QQQQ)
}
}
\keyword{ utilities }
