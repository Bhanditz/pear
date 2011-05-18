\name{peacf.plot}
\alias{peacf.plot}
\title{
periodic correlation plot
}
\description{
Produces auto and partial periodic correlation plots using the output
from peacf and pepacf. If plot=TRUE in the argument to peacf or pepacf
then these functions call peacf.plot.
}
\usage{
peacf.plot(r)
}

\arguments{
\item{r}{
list returned from peacf or pepacf
}}

\value{
NULL
}

\section{Side Effects}{
plot produced
}

\details{
The plot shows the periodic correlations at various lags along
with benchmark 95\% limits for no correlation effect. 
}

\references{
McLeod, A.I. (1994), "Diagnostic Checking of Periodic Autoregression"
Journal of Time Series Analysis, Vol. 15, No. 2, pp.221--233.
}

\seealso{
peacf, pepacf
}
\examples{
data(Fraser)
acf.out <- peacf(log(Fraser), plot=FALSE)
peacf.plot(acf.out)
}
\keyword{ts}
