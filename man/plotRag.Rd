\name{plotRag}
\alias{plotRag}
\alias{.optRagargs}
\title{Plot an Ragraph (using Rgraphviz)}
\description{
  Plot an \code{\link[Rgraphviz:Ragraph-class]{Ragraph}}
  object (a kind of \dQuote{laid-out} graph, from package
  \pkg{Rgraphviz}).  This the simply uses the \code{\link{plot}} method
  from package \pkg{Rgraphviz} (i.e., \code{selectMethod(plot, "Ragraph")})
  and additionally adds a \dQuote{footnote}-like subtitle.
}
\usage{
plotRag(ragr, sub, subArgs = .optRagargs(), ...)

.optRagargs(side = 1, adj = 0.05, cex = 0.75, line = 3)
}
\arguments{
  \item{ragr}{an object of class
    \code{\link[Rgraphviz:Ragraph-class]{Ragraph}} (as defined in the
    \pkg{Rgraphviz} package).}
  \item{sub}{a \dQuote{footnote} or subtitle to be added to
    \code{plot(ragr,...)}.  By default gives the number of nodes and edges.}
  \item{subArgs}{a \code{\link{list}} of arguments to
    \code{\link{mtext}}, typically from calling \code{.optRagargs()}.}
  \item{\dots}{further arguments passed to \code{plot(.)}, i.e., the
    plot method for \code{Ragraph} objects.}
  \item{side, adj, cex, line}{arguments passed to \code{\link{mtext}()}
    with non-standard defaults in order to place \code{sub}, the
    \dQuote{sub title}.}
}
\author{Martin Maechler}
\seealso{\code{\link{mRagraph}},
  \code{\link[Rgraphviz:Ragraph-class]{Ragraph}}.
}
\examples{
  if(require("Matrix")) {
    trMatrix <- classTree("Matrix")
    trMatrix
    RtrM <- mRagraph(trMatrix)
    RtrM # (the show method will hopefully improve)
    str(RtrM, max=2) # shows a bit more

    plot(RtrM) ## almost the same as
    plotRag(RtrM, subArgs=.optRagargs(adj = 0.5))
               ## which just gives "<n> nodes with <m> edges"
  }
}
\keyword{hplot}
