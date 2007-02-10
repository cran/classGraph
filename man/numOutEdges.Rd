\name{numOutEdges}
\alias{numOutEdges}
\title{For each Node of a Directed Graph give the Number Outgoing Edges}
\description{
  In a directed or undirected graph, for each node count the number of
  edges \dQuote{leaving} that nodes.}
}
\usage{
numOutEdges(g)
}
\arguments{
  \item{g}{an \R object of class \code{\link[graph:graph-class]{graph}}
    (from package \pkg{graph}).}
}
\value{
  an \code{\link{integer}} vector the same length as
  \code{\link[graph]{nodes}(g)} giving the number of edges that ``go
  out'' from each node.
}
\author{Martin Maechler}
\seealso{\code{\link{leaves}}; further \code{\link[graph]{edgeL}} on
  which this function is built.}
\examples{
}
\keyword{graphs}
\keyword{utilities}
