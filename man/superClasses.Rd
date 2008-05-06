\name{superClasses}
\alias{superClasses}
\title{List of Super Classes of a Given S4 Class}
\description{
  Give a \code{\link{list}} of all super classes of a specific
  S4 class (definition).
}
\usage{
superClasses(x)
}
\arguments{
  \item{x}{a class representation as returned by
    \code{\link[methods]{getClassDef}}.}
}
\value{
  a list of length-1 \code{\link{character}} strings, typically with a
  \code{"package"} attribute each.
}
\author{Robert Gentleman and Martin Maechler}
\seealso{\code{\link{subClasses}}, ...}
\examples{
superClasses(getClassDef("graphNEL"))

if(require("Matrix")) {
  scL <- superClasses(getClassDef("dgeMatrix"))
  str(scL) # a list of two
} # 'Matrix'

}
\keyword{classes}
