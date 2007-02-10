\name{mRagraph}
\alias{mRagraph}
\title{Construct a Laid-Out Graph for Plotting}
\description{
  My constructor of an \code{\link[Rgraphviz:Ragraph-class]{Ragraph}}
  object, a kind of \dQuote{laid-out} graph, from package
  \pkg{Rgraphviz}.  This allows more customization in plotting than just
  calling \code{plot(gr, ...)} for a
  \code{\link[graph:graph-class]{graph}} object from package
  \pkg{graph}.
}
\usage{
mRagraph(gr, lType, fixedsize = FALSE,
         fill = c("lightblue", "gray90"),
         color = c("blue3", "gray60"),
         labcol = c("blue3", "green4", "purple"))
}
\arguments{
  \item{gr}{an \R object of class \code{\link[graph:graph-class]{graph}} (from
    package \pkg{graph}), in our case typically the result of
    \code{\link{classTree}()}.}
  \item{lType}{a string specifying the layout type,
    see \code{\link[Rgraphviz]{agopen}()} in package \pkg{Rgraphviz} for the
    possibilities.}
  \item{fixedsize}{logical indicating if the ellipses should all get the
    same size -- or should rather adapt to the situation.}
  \item{fill}{character vector of length 2....}
  \item{color}{character vector of length 2....}
  \item{labcol}{vector of labels to be used ....}
}
% \details{
%   ~~ If necessary, more details than the description above ~~
% }
\value{
  an object of class \code{\link[graph:Ragraph-class]{Ragraph}},
  produced by an appropriate call to \code{\link[Rgraphviz]{agopen}}.
}
% \references{ ~put references to the literature/web site here ~ }
\author{Martin Maechler}
\seealso{the customized plotting function \code{\link{plotRag}}.}
\examples{
  if(require("Matrix")) {
    trMatrix <- classTree("Matrix")
    trMatrix
    RtrM <- mRagraph(trMatrix)
    RtrM # (the show method will hopefully improve)
    str(RtrM, max=2) # shows a bit more

    plot(RtrM)
  }
}
\keyword{graphs}
\keyword{manip}
