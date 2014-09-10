\name{saery-package}
\alias{saery-package}
\alias{saery}
\docType{package}
\title{
Small Area Estimation for Rao and Yu model
}
\description{
A complete set of functions to calculate several eblups estimators and its mean square errors. All estimators are based in area-level linear mixed model introduced by Rao and Yu in 1994 (see documentation). Saery package are developed to fit the model with REML method.
}
\details{
\tabular{ll}{
Package: \tab saery\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2014-09-10\cr
License: \tab GPL-2\cr
}
The main functions of the saery package are \code{fit.saery} and \code{eblup.saery}.
The function \code{fit.saery} is used to fit the correct model for three options. \code{eblup.saery} calculates the eblup and mse for the model.
}
\author{
Maria Dolores Esteban Lefler, Domingo Morales Gonzalez, Agustin Perez Martin

Maintainer: Agustin Perez Martin <agustin.perez@umh.es>
}
\references{
Rao, J.N.K., Yu, M., 1994. Small area estimation by combining time series and cross sectional data. Canadian Journal of Statistics 22, 511-528.

Esteban, M.D., Morales, D., Perez, A., Santamaria, L., 2012. Small area estimation of poverty proportions under area-level time models. Computational Statistics and Data Analysis, 56 (10), pp. 2840-2855.
}

\keyword{ package }
\keyword{ sae }
\keyword{ small area estimation }

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
