\name{classTree}
\alias{classTree}
\title{builds a directed graph, typically a tree from a class Object}
\description{
  From an S4 class, by investigating all subclasses, a inheritance graph
  is built, a directed graph, often a tree.
}
\usage{
classTree(Cl, all = FALSE, ...)
}
\arguments{
  \item{Cl}{class name ...}
  \item{all}{logical indicating if all instead of just direct
    sub-classes should be used.}
  \item{\dots}{ ....}
}
% \details{
% }
\value{
  an \R object inheriting from class \code{\link[graph:graph-class]{graph}}.
}
\author{Martin Maechler}
\seealso{\code{\link{class2Graph}}, ...} %% TODO
\examples{
## Using classes and methods from package 'graph' :
trGclass <- classTree("graph")
as(trGclass, "matrix")
plot(trGclass) # using package 'Rgraphviz'
}
\keyword{graphs}
\keyword{classes}
