\name{leaves}
\alias{leaves}
%%I \alias{is.leaf}%--- is.leaf() is non-generic in 'stats' ... arrgh
%
\title{Determine The Terminal Nodes ('Leaves') of a Directed Graph}
\description{
  Determine the terminal nodes (also known as \emph{leaves}) of a
  directed graph.
}
\usage{
leaves(g)
%%I is.leaf(g)
}
\arguments{
  \item{g}{an \R object of class \code{\link[graph:graph-class]{graph}}
    (from package \pkg{graph}).}
}
% \details{
%   ~~ If necessary, more details than the description above ~~
% }
\value{
  \code{leaves()} returns a character of node names (see
  \code{\link[graph]{nodes}}) of \code{g} whereas
%%I   \cr
%%I   \code{is.leaf()} returns a \code{\link{logical}} vector of the same
%%I   length as \code{\link[graph]{nodes}(g)} indicating if the corresponding node
%%I   is a leaf.
}
\author{Martin Maechler}
\seealso{\code{\link{numOutEdges}} on which these build.}
\examples{
%% TODO
}
\keyword{graphs}
\keyword{utilities}
