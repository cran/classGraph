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
\seealso{\code{\link[graph]{edgeL}} on which this function is built, and
  \code{\link[graph]{leaves}}, both from package \pkg{graph}.
}
\examples{
## Simplistic leaves() definition for *directed graphs* :
## { compare with graph::leaves() }
is.leaf <- function(g) numOutEdges(g) == 0 ## (also exists hiddenly..)
Leaves  <- function(g) nodes(g)[is.leaf(g)]
Leaves(bGraph(4, mode = "directed"))
}
\keyword{graphs}
\keyword{utilities}
