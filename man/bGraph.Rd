\name{bGraph}
\alias{bGraph}
\title{Create a "Branch Graph" (Simple Tree with Root and Leaves)}
\description{
  Create a \dQuote{Branch Graph}, i.e., a simple tree with root and
  \eqn{n} (simple) branches or leaves.
}
\usage{
bGraph(n, root = "Mom",
       leaves = paste(l.prefix, seq(length = n), sep = ""),
       l.prefix = "D", weights = NULL,
       mode = c("undirected", "directed"))
}
\arguments{
  \item{n}{integer specifying the number of leave branches.}
  \item{root}{the node on which to root the tree.}
  \item{leaves}{the nodes to be used as leaves.}
  \item{l.prefix}{a string specifying .....}
  \item{weights}{ .......}
  \item{mode}{string indicating which mode is to be used.}
}
% \details{
%   ~~ If necessary, more details than the description above ~~
% }
\value{
  a graph object of class \code{\link[graph:graphNEL-class]{graphNEL}}.
}
\author{Martin Maechler, Aug.2005}
\seealso{class \code{\link[graph:graphNEL-class]{graphNEL}};
  \code{\link[graph]{ftM2graphNEL}}.
}
\examples{
require("graph") ## Using package 'graph' => plot() method (via package 'Rgraphviz'):

(bg7 <- bGraph(7)) # 8 nodes {Mom, D1..D7}; 7 edges
plot(bg7) # draws the graph

(bgD3 <- bGraph(3, mode="directed"))
plot(bgD3) # directed: using arrows

(bgw2 <- bGraph(2, weights = c(10,1)))
plot(bgw2) # {maybe use lwd for weights in the future?}
if(require("Matrix"))
  show(as(bgw2, "sparseMatrix")) # shows the weights
}
\keyword{graphs}

