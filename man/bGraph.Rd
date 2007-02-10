\name{bGraph}
\alias{bGraph}
\title{Create a "Branch Graph", a simple tree with root and
  n branches / leaves}
\description{
 ..
}
\usage{
bGraph(n, root = "Mom",
       leaves = paste(l.prefix, seq(length = n), sep = ""),
       l.prefix = "D", weights = NULL,
       mode = c("undirected", "directed"))
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{n}{ .......}
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
% \references{ ~put references to the literature/web site here ~ }
\author{Martin Maechler, Aug.2005}
\seealso{class \code{\link[graph:graphNEL-class]{graphNEL}};
  \code{\link[graph]{ftM2graphNEL}}.
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

}

\keyword{graphs}

