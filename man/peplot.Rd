\name{peplot}
\alias{peplot}
\title{
Periodic Correlation Visualization Plot
}
\description{
In order to visualize dependence at lag k in a periodic series it
is useful to plot z[t] vs z[t-k] for each period, m=1,2,\dots,p.
For example in a monthly series we look at scatter plots of Jan vs
Dec (previous year), Feb vs Jan, Mar vs Feb, etc. for the lag 1 plots.
}
\usage{
peplot(z, lag=1, label=FALSE, mfrow=c(2, 2))
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
\item{lag}{
lag separation
}
\item{label}{
if label = TRUE, the Splus identify() function will be called allowing
one to identify and label particular data points on the plots.
}
\item{mfrow}{
Since many plots may be produced, the default is to produced 4 plots 
per page.
}}
\value{
NULL
}
\section{Side Effects}{
plot produced
}
\details{
The importance of looking at these plots was noted by Cox (1981)
}
\references{
Cox, D.R. (1981), "Statistical Analysis of Time Series: Some Recent
Developments", Scandinavian Journal of Statistics, Vol. 8, pp.93--115.
}
\seealso{
}
\examples{
data(fraser)
peplot(log(fraser))
}
\keyword{ts}
% Converted by Sd2Rd version 1.21.
