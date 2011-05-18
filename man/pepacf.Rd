\name{pepacf}
\alias{pepacf}
\title{
periodic partial autocorrelation function
}
\description{
The periodic partial autocorrelation function of a periodic
time series is calculated and plotted if the argument
plot=TRUE. When the period, p=1, this reduces to the usual partial 
autocorrelation function as defined in Box and Jenkins (1976)
and is equivalent then to the Splus function acf(type="partial").
As discussed in Box and Jenkins (1976), McLeod (1994) and 
Hipel and McLeod (1994) the partial autocorrelation is a 
valuable tool in selecting the model order.
}
\usage{
pepacf(z, lag.max, plot=TRUE, acf.out)
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
}
\item{acf.out}{
output from peacf function. If this is provided, execution will
proceed faster, otherwise it is calculated from scratch.
}}
\value{
a list containing the following components:
 acf.out	      output list from peacf
 pacf		      matrix of partial autocorrelations
 residual.sd 	      matrix of residual standard deviations of
                      the fitted models of order m, m=1,2,\dots,lag.max
 phi		      matrix of autoregressive coefficients in the final 
                      model of order lag.max for each period
 aic		      matrix of aic values for each period and lag
 bic		      matrix of bic values for each period and lag
 maice		      vector of length p of the minimum aic models
 mbice		      vector of length p of the minimum bic models
}
\section{Side Effects}{
a plot is produced if plot=TRUE
}
\details{
For the detailed derivation of the algorithm see Sakai (1982).
Note that our partial autocorrelation is the negative of that
given in Sakai's paper.

The paper of Noakes et al. (1987) and the book of Hipel and McLeod (1994)
contain examples of this type of plot. 
}

\references{
Box, G.E.P. and Jenkins, G.M. (1976), "Time Series Analysis: Forecasting
and Control", Holden-Day: San Franciso.

Hipel, K.W. and McLeod, A.I. (1994) "Time Series Modelling of 
Water Resources and Environmental Systems"  Elsevier, Amsterdam
ISBN 0--444--89270--2.  (1013 pages).

McLeod, A.I. (1994), "Diagnostic Checking of Periodic Autoregression"
Journal of Time Series Analysis, Vol. 15, No. 2, pp.221--233.

Noakes, D.J., Hipel, K.W. & McLeod, A.I. (1987).  
Forecasting experiments with annual geophysical time series,  
The International Journal of Forecasting, V.4, pp.103--115.

Sakai, H. (1982), "Circular lattice filtering using Pagano's Method",
IEEE Transactions, Acoust. Speech, Signal Processing, Vol. 30, pp.279--287.
}

\seealso{
peacf, peacf.plot, peplot, acf, acf.plot
}

\examples{
data(Fraser)
pepacf(log(Fraser))
}
\keyword{ts}
