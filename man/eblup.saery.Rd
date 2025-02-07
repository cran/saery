\name{eblup.saery}
\alias{eblup.saery}
\alias{eblup.saery.AR1}
\alias{eblup.saery.MA1}
\alias{eblup.saery.indep}
\title{
The function \code{eblup.saery} calculate the eblup and mse for a model.
}
\description{
The function \code{eblup.saery} calculate the eblup and mse for a model. Is recomended that the model was previusly checked by \code{\link{fit.saery}}
}
\usage{
eblup.saery(X, ydi, D, md, sigma2edi,
      model = c("INDEP", "AR1", "MA1"),
      plot = FALSE, type = "I", B = 100)
eblup.saery.AR1(X, ydi, D, md, sigma2edi, plot, type, B)
eblup.saery.MA1(X, ydi, D, md, sigma2edi, plot, type, B)
eblup.saery.indep(X, ydi, D, md, sigma2edi, plot)
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
  \item{plot}{
logical specifying if a set of plot be returned. \code{FALSE} by default.
}
  \item{type}{
three types of mse can be calculated for \code{AR1} and \code{MA1} models. One of the with an explicit and direct function, and the orther two by a bootstrap procedure that takes more time to the system to calculate them. For the \code{indep} model, only the an explicit function are developed \code{type = "I"}
}
  \item{B}{
the number of bootstrap samples to be generated and fitted for types \code{"I"} and \code{"II"}
}
}
\value{
A data frame with the eblups and its mse be returned. A set of plots be displayed if \code{plot = TRUE}
}
\references{
Rao, J.N.K., Yu, M., 1994. Small area estimation by combining time series and cross sectional data. Canadian Journal of Statistics 22, 511-528.

Esteban, M.D., Morales, D., Perez, A., Santamaria, L., 2012. Small area estimation of poverty proportions under area-level time models. Computational Statistics and Data Analysis, 56 (10), pp. 2840-2855.
}
\author{
Maria Dolores Esteban Lefler, Domingo Morales Gonzalez, Agustin Perez Martin
}

\seealso{
\code{\link{fit.saery}}
}
\examples{

sigma2edi <- datos[,6]
X <- as.matrix(datos[,5])
ydi <- datos[,3]
D <- length(unique(datos[,1]))
md <- rep(length(unique(datos[,2])), D)

#For computational reasons B is too low. We recomend to increase up to 100
eblup.output.ar1 <- eblup.saery(X, ydi, D, md, sigma2edi, model = "a", plot = TRUE, B = 2)
eblup.output.ar1

#For computational reasons B is too low. We recomend to increase up to 100
eblup.output.ma1 <- eblup.saery(X, ydi, D, md, sigma2edi,
                    model = "ma", plot = FALSE, type = "II", B = 2)
eblup.output.ma1

eblup.output.indep <- eblup.saery(X, ydi, D, md, sigma2edi,
                      model = "i", plot = TRUE)
eblup.output.indep
}

\keyword{ sae }
\keyword{ eblup }
\keyword{ REML }
\keyword{ saery }

