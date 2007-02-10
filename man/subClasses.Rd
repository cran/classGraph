\name{subClasses}
\alias{subClasses}
\title{All Subclasses of a Given S4 Class}
\description{

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
  ~Describe the value returned
  If it is a LIST, use
  \item{comp1 }{Description of 'comp1'}
  \item{comp2 }{Description of 'comp2'}
  ...
}
\author{Martin Maechler}
\seealso{\code{\link{superClasses}}; \code{\link[methods]{Classes}} in
  general.}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function (Cl, directOnly = TRUE, complete = TRUE, ...)
{
    if (isClassDef(Cl)) {
        cDef <- Cl
        Cl <- cDef@className
    }
    else {
        cDef <- if (complete)
            getClass(Cl)
        else getClassDef(Cl)
    }
    subs <- showExtends(cDef@subclasses, printTo = FALSE)
    if (directOnly)
        subs$what[subs$how == "directly"]
    else subs$what
  }
}
\keyword{classes}
