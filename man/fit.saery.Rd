\name{fit.saery}
\alias{fit.saery}
\alias{fit.saery.AR1}
\alias{fit.saery.MA1}
\alias{fit.saery.indep}
\title{
The function \code{fit.saery} is used to fit the correct model for three options.
}
\description{
The function \code{fit.saery} fits the model for three options. This function and \code{\link{eblup.saery}} use the REML method to fit the model.
}
\usage{
fit.saery(X, ydi, D, md, sigma2edi,
      model = c("INDEP", "AR1", "MA1"),
      conf.level = 0.95)
fit.saery.AR1(X, ydi, D, md, sigma2edi, conf.level)
fit.saery.MA1(X, ydi, D, md, sigma2edi, conf.level)
fit.saery.indep(X, ydi, D, md, sigma2edi, conf.level)
}
\arguments{
  \item{X}{
a numeric vector or data frame containing the aggregated (population) values of p auxiliary variables. A ones columns must be agregated to calculate the intercept parameter
}
  \item{ydi}{
a numeric vector with the direct estimator of the indicator of interest for area (domain)
}
  \item{D}{
a numeric vector with the number of areas (domain) of the data
}
  \item{md}{
a numeric vector with the number of periods (subdomains) for each area of the data
}
  \item{sigma2edi}{
a numeric vector with the known variance of the error term
}
  \item{model}{
Three diferents types of model must be fit. For an indepent model \code{INDEP} or an abbreviated version of it must be typed. An AR1 model can be fit using \code{AR1} or an abbreviated version. For MA1 model, use \code{MA1} or an abbreviated version. This function and \code{\link{fit.saery}} use the REML method to fit the model. 
}
  \item{conf.level}{
a value under 1 for the confidence level for the confidence intervals returned by the function
}
}
\value{
A list with the fitted parameters of the model are returned. Caonfidence intervals, p-values, the Fisher Scoring matrix and the number of iterations of the model are also returned.
}
\references{
Rao, J.N.K., Yu, M., 1994. Small area estimation by combining time series and cross sectional data. Canadian Journal of Statistics 22, 511-528.

Esteban, M.D., Morales, D., Perez, A., Santamaria, L., 2012. Small area estimation of poverty proportions under area-level time models. Computational Statistics and Data Analysis, 56 (10), pp. 2840-2855.
}
\author{
Maria Dolores Esteban Lefler, Domingo Morales Gonzalez, Agustin Perez Martin
}
\seealso{
\code{\link{eblup.saery}}, ~~~
}
\examples{

sigma2edi <- datos[,6]
X <- as.matrix(datos[,5])
ydi <- datos[,3]
D <- length(unique(datos[,1]))
md <- rep(length(unique(datos[,2])), D)

output.fit.ar1 <- fit.saery(X, ydi, D, md, sigma2edi, "AR", 0.9)
output.fit.ar1

output.fit.ma1 <- fit.saery(X, ydi, D, md, sigma2edi, "MA", 0.9)
output.fit.ma1

output.fit.indep <- fit.saery(X, ydi, D, md, sigma2edi, "indep", 0.9)
output.fit.indep
}

\keyword{ sae }
\keyword{ REML }
\keyword{ saery }
