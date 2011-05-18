\name{peboxplot}
\alias{peboxplot}
\title{
boxplots of a periodic time series
}
\description{
Side-by-side boxplots are produced for each period in a periodic
time series. These plots can reveal many important features in a
periodic time series such as the need for a variance stablizing
transformation, outliers, heteroscedasticity not removable by a
power transformation, etc. The peboxplot is a useful adjunct to
the Splus functions tsplot and monthplot.
}
\usage{
peboxplot(z, \dots)
}
\arguments{
\item{z}{
a univariate time series object. Note that the period of
z is given by attr(z, "tsp")[3]. Additional information about
the time series can be provided in a title string by setting
attr(z, "title") to the desired string. This title will then
be displayed on the plot. Abbreviations for the periods may
be provided in attr(z, "abb"). For example, to use the standard
monthly abbreviations: attr(z, "abb")<-month.abb. These abbreviations 
will be used to aid one in interpreting the output.
}
\item{...}{
optional arguments which are passed to the boxplot function
}}

\value{
No output is produced. Plot is a 'side effect'.
}

\section{Side Effects}{
plot produced
}
\details{
Boxplots of seasonal data are vary useful in many applications. See
Hipel and McLeod (1994) for examples.
}
\references{
Hipel, K.W. and McLeod, A.I. (1994) "Time Series Modelling of 
Water Resources and Environmental Systems"  Elsevier, Amsterdam
ISBN 0--444--89270--2.  (1013 pages).
}
\seealso{
peplot, monthplot, tsplot
}
\examples{
data(Fraser)
peboxplot(log(Fraser))
}
\keyword{ts}
