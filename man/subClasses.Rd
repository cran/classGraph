\name{subClasses}
\alias{subClasses}
\title{All Subclasses of a Given S4 Class}
\description{
  Retugn all subclasses of a given S4 class; either only the direct sub
  classes are also those \dQuote{further away} (distance \eqn{> 1}).
}
\usage{
subClasses(Cl, directOnly = TRUE, complete = TRUE, ...)
}
\arguments{
  \item{Cl}{a class representation or a class name (\code{\link{character}}).}
  \item{directOnly}{logical indicating if you \emph{direct} subclasses
    are desired (or also the ones with \emph{distance} \eqn{> 1}).}
  \item{complete}{logical,.. as in....} %% FIXME getClassDef() ??
  \item{\dots}{........}%FIXME
}
\value{
  a \code{\link{character}} vector of class names.
}
\author{Martin Maechler}
\seealso{\code{\link{superClasses}}; \code{\link[methods]{Classes}} in
  general.}
\examples{
subClasses("graph") # -> the direct ones
subClasses("graph", directOnly = FALSE) # the same: has only direct subclasses
if(require("Matrix")) {
  print( subClasses("sparseMatrix") )
  print( subClasses("sparseMatrix", directOnly = FALSE) )# much more
}
}
\keyword{classes}
