\name{peacf}
\alias{peacf}
\title{
Periodic Autocorrelation Function
}
\description{
The periodic autocorrelation for a time series with period p may be
defined as for period (m=1,\dots,p) and lag, l=1,2,\dots by
r(m, l) = c(m, l)/sqrt(c(m, 0)*c(m-l, 0))
where c(m, l) is the periodic autocovariance defined by
c(m, l) = sum(z[t] * z[t-l])
where the sum is over all data in period m.
When p=1, peacf produces output which is equivalent to that produced
by Splus function acf.


}
\usage{
peacf(z, lag.max, plot=TRUE)
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
\item{lag.max}{
maximum lag, if missing default is 0.25*length(z)/p, where
p = attr(z, "tsp")[3]
}
\item{plot}{
if plot=TRUE, a plot of the periodic autocorrelations is produced.
}}
\value{
a list is returned with the following components: 
means                      periodic means
standard.deviations	   periodic standard deviations
acf			   matrix of periodic autocorrelations
benchmark.sd		   1/sqrt(nyrs), nyrs=ceiling(length(z)/p)
sub.lengths		   number of observations in each period
period			   p = attr(z, "tsp")[3]
title			   title = attr(z, "title")
periodicity.test	   list: test for periodic correlation at lag 1
                                 The components of this list are:
				 Q1 = scalar value, the test statistic
				 Q1.sl = signifiance level (upper tail)
portmanteau.test	   list: portmanteau test at various lags
                                 The components of this list are:
				 QM = matrix of portmanteau statistics
				      for each period and lag
				 QM.df = corresponding df of QM
}
\section{Side Effects}{
a plot may be produced if plot=TRUE
}

\details{
The use of the periodic autocorrelation and its plot are discussed
in McLeod (1994) and a portmanteau model adequacy test is developed
therein. The periodicity test is discussed in McLeod (1993).
For more details, see the references below.
}

\references{
Hipel, K.W. and McLeod, A.I. (1994) "Time Series Modelling of 
Water Resources and Environmental Systems"  Elsevier, Amsterdam
ISBN 0--444--89270--2.  (1013 pages).
McLeod, A.I. (1993), "Parsimony, Model Adequacy and Periodic Correlation
in Time Series Forecasting", International Statistical Review, 
Vol. 61, No. 3, pp.387--393.
McLeod, A.I. (1994), "Diagnostic Checking of Periodic Autoregression"
Journal of Time Series Analysis, Vol. 15, No. 2, pp.221--233.
}

\seealso{
peacf.plot, pepacf, peplot, peboxplot, pear, acf, acf.plot
}

\examples{
data(Fraser)
peacf(log(Fraser))
}

\keyword{ts}




