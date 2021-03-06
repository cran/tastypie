% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pie_datacheck.R
\name{pie_datacheck}
\alias{pie_datacheck}
\title{Check if the data is good for making tasty pies}
\usage{
pie_datacheck(data, check = FALSE)
}
\arguments{
\item{data}{The data that you want to use for creating pie charts.}

\item{check}{Logical, set equal to TRUE if you need a message to know if there are
no problems.}
}
\value{
If the provided data are a dataframe with only two variables (columns) with
the vector of labels in the first one and the vector of values in the second one, nothing
will happen. Otherwise, an error that tells you what's wrong occurs.
}
\description{
\code{pie_datacheck} checks if the provided data are suitable for creating pie charts
using the useful functions in the \code{tastypie} package.
}
\examples{
wrong <- c(1, 2, 3)
# Would return an Error

wrong2 <- data.frame("a" = c(1, 2, 3), "b" = c("ex", "am", "ple"))
# Would return an Error

right <- data.frame("a" = c("ex", "am", "ple"), "b" = c(1, 2, 3))
pie_datacheck(right) # No Error ==> OK!
pie_datacheck(right, check = TRUE) # Positive message

}
