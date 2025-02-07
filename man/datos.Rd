\name{datos}
\alias{datos}
\docType{data}
\title{
Dataset for saery package
}
\description{
A simulated dataset created by the authors in order to check the correct operation of the saery package
}
\usage{data(datos)}
\format{
  A simulated data frame with 2000 observations on the following 6 variables.
  \describe{
    \item{\code{Area}}{a numeric vector with the area (domain) of the data}
    \item{\code{Period}}{a numeric vector with the period (subdomain) of the data}
    \item{\code{ydi}}{a numeric vector with the direct estimator of the indicator of interest for area (domain)}
    \item{\code{ones}}{a numeric vector. This is only needed to include the intercept parameter in the model}
    \item{\code{xdi}}{a numeric vector containing the aggregated (population) values of an auxiliary variable}
    \item{\code{sigma2edi}}{a numeric vector with the known variance of the error term}
  }
}

\examples{

sigma2edi <- datos[,6]
X <- as.matrix(datos[,5])
ydi <- datos[,3]
D <- length(unique(datos[,1]))
md <- rep(length(unique(datos[,2])), D)

output.fit.ar1 <- fit.saery(X, ydi, D, md, sigma2edi, "AR", 0.9)
output.fit.ar1

#For computational reasons B is too low. We recomend to increase up to 100
eblup.output.ar1 <- eblup.saery(X, ydi, D, md, sigma2edi, "a", plot = TRUE, B = 2)
eblup.output.ar1
}
\keyword{datasets}
