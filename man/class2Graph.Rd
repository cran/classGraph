\name{class2Graph}
\alias{class2Graph}
\title{Build the Graph of Super Classes from an S4 Class Definition}
\description{
  From an S4 class definition \code{class}, computes the graph of all
  super classes, i.e., of all classes that \code{class} extends.
}
\usage{
class2Graph(class, fullNames = TRUE, simpleOnly = FALSE,
            bottomUp = FALSE, package = class@package)
}
\arguments{
  \item{class}{class name}
  \item{fullNames}{logical indicating if full name should be applied....}
  \item{simpleOnly}{logical, simply passed to
    \code{\link[methods]{getAllSuperClasses}(..)}.}
  \item{bottomUp}{logical indicating the \emph{direction} of the graph.}
  \item{package}{package where the super classes should be gotten
    from.}
}
% \details{
%   ~~ If necessary, more details than the description above ~~
% }
\value{
  an \R object inheriting from class \code{\link[graph:graph-class]{graph}}.
}
\author{Robert Gentleman (original code) and Martin Maechler}
\seealso{\code{\link{classTree}} which builds the graph of all
  \emph{sub}classes.
}
\examples{
require("graph")
cg <- class2Graph("graphNEL") # simple :  graphNEL |-> graph
plot(cg)

if(require("Matrix")) {
   cg2 <- class2Graph("dgCMatrix")
   as(cg2, "sparseMatrix")
   plot(cg2)
   ## alternative: don't show the initial "Matrix:"
   cg2. <- class2Graph("dgCMatrix", fullNames=FALSE)
   plot(cg2.)
   ## 'simpleOnly' does not change anything here :
   stopifnot(identical(cg2.,
          class2Graph("dgCMatrix", fullNames=FALSE, simpleOnly = TRUE)))


   ## very simple, since "sparseMatrix" only extends "Matrix" :
   cg3 <- class2Graph("sparseMatrix")
   plot(cg3)
}
}
\keyword{graphs}
\keyword{classes}
