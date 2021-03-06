% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/TargetExperiment-plot.R,
% R/TargetExperimentList-plot.R
\docType{methods}
\name{plot}
\alias{plot}
\alias{plot,TargetExperiment}
\alias{plot,TargetExperimentList}
\alias{plot.TargetExperiment}
\alias{plot.TargetExperimentList}
\title{Plot TargetExperiment object overview.}
\usage{
\method{plot}{TargetExperiment}(x, y, attributeThres = c(0, 1, 50, 200,
    500, Inf), binSize = 1, spaceGene = 0.2, spaceChr = 1.2,
    innerRadius = 0.3, outerRadius = 1, guides = c(20, 40, 60, 80),
    alphaStart = -0.3, circleProportion = 0.95, direction = "inwards",
    chrLabels = FALSE, ...)

\method{plot}{TargetExperimentList}(x, y, attributeThres = c(0, 1, 50,
    200, 500, Inf), pool = FALSE, sampleLabs = TRUE, featureLabs = FALSE,...)
}
\arguments{
\item{x}{TargetExperiment/TargetExperimentList class object.}

\item{y}{not used but necessary for redefining the generic function.}

\item{attributeThres}{Numeric indicating the interval extreme values.}

\item{binSize}{Numeric indicating bin width. Should probably be left
    as 1, as other parameters are relative to it.}

\item{spaceGene}{Numeric. Space between bins.}

\item{spaceChr}{Numeric. Space between chromosomes.}

\item{innerRadius}{Numeric. Radius of the inner circle.}

\item{outerRadius}{Numeric. Radius of the outer circle.}

\item{guides}{A vector with percentages to use for the white guide lines.}

\item{alphaStart}{Numeric offset from 12 o'clock in radians.}

\item{circleProportion}{Numeric proportion of the circle to cover.}

\item{direction}{Character indicating if the increasing count goes from or
    to the center.}

\item{chrLabels}{Logical. Chromosome names must be plotted?.}

\item{pool}{Logical indicating if the plots should be performed for each
    pool separately}

\item{sampleLabs}{Logical. Sample names must be plotted?.}

\item{featureLabs}{Logical. Feature names must be plotted?.}

\item{...}{not used but necessary for redefining the generic function.}
}
\value{
a ggplot2 graph.
}
\description{
\code{plot} allows a fast and simple representation of one feature panel
using a polar histogram plot. Histogram bar reflects the percentage of 
features that have shown the analyzed attribute in a user set interval.
The resulting graph can be busy and might be better off saved.

For TargetExperimentList objects, \code{plot} allows a fast and simple 
representation of several feature panels using a heatmap plot. Along the
x-axis, the features are represented and patients/samples along the y-axis. 
Finally, each cell is colored according to the attribute interval.
}
\note{
see full example in \code{\link{TargetExperiment-class}}

see full example in \code{\link{TargetExperimentList-class}}
}
\examples{
## Loading the TargetExperiment object
data(ampliPanel, package="TarSeqQC")
# Definition of the interval extreme values
attributeThres<-c(0,1,50,200,500, Inf)

## Plot panel overview
g<-plot(ampliPanel, attributeThres, chrLabels =TRUE)
if(interactive()){
g
}
## Loading the TargetExperimentList object
data(TEList, package="TarSeqQC")
# Definition of the interval extreme values
attributeThres<-c(0,1,50,200,500, Inf)

## Plot panel overview
g<-plot(TEList, attributeThres=attributeThres, featureLabs =TRUE)
if(interactive()){
g
}
}
\author{
Gabriela A. Merino \email{gmerino@bdmg.com.ar}, Cristobal Fresno
\email{cfresno@bdmg.com.ar}, Yanina Murua \email{ymurua@leloir.org.ar},
Andrea S. Llera \email{allera@leloir.org.ar} and Elmer A. Fernandez 
\email{efernandez@bdmg.com.ar}
}
\references{
\url{http://www.r-bloggers.com/polar-histogram-pretty-and-useful/}
}
\seealso{
\code{\link{plotFeatPerform}}
}

