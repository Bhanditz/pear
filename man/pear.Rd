\name{pear}
\alias{pear}
\title{
fit a periodic autoregression model
}
\description{
Periodic time series models of any order, say m[j], for the j-th
period, j=1,\dots,p can be fit to a periodic time series of period p.
A generalization of the Yule-Walker method is used so that when p=1
the results from this function will be equivalent to the Splus
function ar.yw(). If desired the aic or bic criterion can be used
to select the model orders. Otherwise the user can select based on
the partial autocorrelation function as suggested in Box and Jenkins
(1976) and McLeod (1994). 
}
\usage{
pear(z, m, ic="none")
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
\item{m}{
If ic="none" then m is a required argument. In this case m
specifies the order of the periodic autoregression to be fitted.
Typically m is specified as a vector of length p where p is the
period and m[k], k=1,\dots,p indicates the order for the k-th period.
For convenience, if all periods are the same order then m can
just be that scalar value. When ic="aic" or ic="bic" then the
argument m is ignored.
}
\item{ic}{
The default ic="none" means the model orders are supplied.
Otherwise if ic="aic" or ic="bic" the automatic criteria aic or bic
are used.
}}
\value{
a list with the following named components:
model.orders              vector of length p, indicating the fitted
                          ar order for each period k, k=1,\dots,p
phi			  matrix of dimension p by m where m = 
                          max(model.orders). The (i,j) entry is
			  phi[i,j] which is the autoregression 
			  coefficient for period i and lag j.
se.phi			  matrix of standard deviations for the
                          estimated phi's. For those phi's set
			  to 0, the corresponding se.phi's are 
			  also set to 0.
resvar			  vector of length p
residuals		  time series object of length(z)
portmanteau.test	   list: portmanteau test at various lags
                                 The named components of this list are:
				 QM = matrix of portmanteau statistics
				      for each period and lag
				 QM.df = corresponding df of QM
				 QM.sl = corresponding sl of QM
residual.acf		  residual autocorrelation matrix
residual.acf.sd           estimated standard errors of the residual
                          autocorrelations
cov			  list with p components:
                                 cov[[i]] is the estimated covariance
				 matrix for the parameters of period i
}
\section{Side Effects}{
none
}
\details{
Let z[t] be a period time series with period p and let m[j] denote
the order of the autoregressive model for the j-th period, j=1,\dots,p.
The parameters of this model can be estimated using the Yule-Walker
type equations given in McLeod eq (3.1) and (3.2). The covariance
matrix of the autoregressive parameters is obtained by replacing
the theoretical autocovariances in eq (3.3, note addendum correction)
with their sample values.


}
\references{
Hipel, K.W. and McLeod, A.I. (1994) "Time Series Modelling of 
Water Resources and Environmental Systems"  Elsevier, Amsterdam
ISBN 0-444-89270-2.  (1013 pages).

McLeod, A.I. (1994), "Diagnostic Checking of Periodic Autoregression"
Journal of Time Series Analysis, Vol. 15, No. 2, pp.221--233.

McLeod, A.I. (1995), Errata (see file errata.tex included
with these files)
}
\seealso{
peacf, pepacf, ar.yw
}
\examples{
data(Fraser)
pear(log(Fraser), ic="bic")
}
\keyword{ts}
