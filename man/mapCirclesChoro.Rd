\name{mapCirclesChoro}
\alias{mapCirclesChoro}
\title{
Proportional Circles Colored by a Discretized Quantitative Variable
}
\description{
This function represents two variables through a proportional circles map.  The areas of the circles are proportional to values of a quantitative variable and their colors reflect the discretization of an other numeric variable.
}
\usage{
mapCirclesChoro(shpFile, shpId, df, dfId, var, var2, 
                fixedNorm = FALSE, shareOfCircles = 0.02, 
                radiusMax = 0.5, valueMax = max(df[, var], na.rm = TRUE), 
                lgdRndCircles = 0, posLegCircles = "topright", 
                circleCol = "grey", baseCol = "#FFEDA0", 
                nclass = 6, style = "quantile", fixBrks = FALSE, listBrks = NULL, 
                diverg = FALSE, divergBrk = 0, 
                palCol = "Greens", palColPos = "Reds", palColNeg = "Blues", 
                NACol = "grey",
                lgdRndDistr = 2, posLegDistr = "bottomleft", 
                title = paste(var, var2, sep = " & "), 
                legendCircles = var, legendDistr = var2, 
                author = "author", sources = "sources", 
                scalebar = FALSE, scalebarSize, scalebarText, 
                northArrow = FALSE, northArrowSize, 
                width = NULL, height = NULL, txtCex = NULL)
}
\arguments{
  \item{shpFile}{
Path to a polygon shapefile.
}
  \item{shpId}{
Unique identifier of the shapefile. It must correspond to \code{dfId}.
}
  \item{df}{
Data frame that contains the variables to be mapped.
}
  \item{dfId}{
Unique identifier of the data frame. It must correspond to \code{shpId}.
}
  \item{var}{
Name of the positive numeric variable to be mapped through the sizes of the circles.
}
  \item{var2}{
Name of the positive numeric variable to be mapped through the colors of the circles.
}
  \item{fixedNorm}{
\code{FALSE} (default) : the sum of the surfaces occupied by circles is proportional to the size of the map and is declared by the \code{shareOfCircles} argument, \code{radiusMax} and \code{valueMax} are not used.\cr
\code{TRUE} : the size of the largest circle is defined by a radius size (\code{radiusMax}) and a fixed variable value (\code{valueMax}), the \code{shareOfCircles} argument is not used. 
}
  \item{shareOfCircles}{
Share of the surface of the map occupied by circles (0.02 is 2\%).
}
  \item{radiusMax}{
Size (in cm) of the radius of the biggest circle.
}
  \item{valueMax}{
Value used to normalize the size of the largest circle (in variable units).
}
  \item{lgdRndCircles}{
Rounding of the values of the variable presented in the legend of the circles.
}
  \item{posLegCircles}{
Position of the legend of the circles(top, bottom, left, right, center, topleft, topright, bottomleft or bottomright).
}
  \item{circleCol}{
Color of the circles in the legend
}
  \item{baseCol}{
Color of the base map.
}
  \item{nclass}{
Number of classes to be represented.
}
  \item{style}{
Method used to provide the class intervals. 
See \code{\link[classInt:classIntervals]{style}} in the \code{classIntervals} function from the \code{classInt} package.
}
  \item{fixBrks}{
\code{FALSE} (default): the class intervals are computed through the \code{style} argument.\cr
\code{TRUE} : the class intervals are provided through the \code{listBrks} argument, \code{nclass} and \code{style} are not used.
}
  \item{listBrks}{
Vector of values used as breaks for the class intervals when \code{fixBrks = TRUE}.
}
  \item{diverg}{
\code{FALSE} (default): there is no color break in the color palette.\cr
\code{TRUE} : a break is introduced in the color palette. Palettes are defined through the \code{palColPos} and \code{palColNeg} arguments, respectively for values superior to the \code{divergBrk} value and inferior to the \code{divergBrk} value.
}
  \item{divergBrk}{
Value used to define the break in the color palette if \code{diverg=TRUE}.
}
  \item{palCol}{
Color palette, provided through \code{RColorBrewer}, to be used in the map.
Use \code{display.brewer.all()} to see the available color ramps. For a more detailed overview : \link[RColorBrewer]{RColorBrewer}.
}
  \item{palColPos}{
Palette used for values superior to \code{divergBrk} if \code{diverg=TRUE}. See \code{palCol} for details.
}
  \item{palColNeg}{
Palette used for values inferior to \code{divergBrk} if \code{diverg=TRUE}. See \code{palCol} for details.
}
  \item{NACol}{
Color used to draw units with no data (\code{NA}).
}
  \item{lgdRndDistr}{
Rounding of the class intervals presented in the legend.
}
  \item{posLegDistr}{
Position of the legend of the discretization (top, bottom, left, right, center, topleft, topright, bottomleft or bottomright).
}
  \item{title}{
Title of the map.
}
  \item{legendCircles}{
Title of the legend for the circles
}
  \item{legendDistr}{
Title of the legend for the discretization
}
  \item{author}{
Two lines (\code{author} and \code{sources}) at the bottom of the map are available to display additional information. It is recommended to display the name of the author and the sources of the data and the base map.
}
  \item{sources}{
Two lines (\code{author} and \code{sources}) at the bottom of the map are available to display additional information. It is recommended to display the name of the author and the sources of the data and the base map.
}
  \item{scalebar}{
\code{FALSE} (default): don't draw a scale bar.\cr
\code{TRUE} : draws a scale bar. The choice of the scale bar location is interactive.
}
  \item{scalebarSize}{
Size of the scale bar in map units.
}
  \item{scalebarText}{
Text of the scale bar.
}
  \item{northArrow}{
\code{FALSE} (default) : don't draw a North arrow.\cr
\code{TRUE} : draws a North arrow. The choice of the North arrow location is interactive.
}
  \item{northArrowSize}{
Size of the North arrow in map units.
}
  \item{width}{
Width of the map in cm.
}
  \item{height}{
Height of the map in cm.
}
  \item{txtCex}{
Size of the texts.
}
}
\details{
The circles are centered on the centroids of the polygons.\cr
Only the six first arguments are compulsory.
}
\value{
A map is displayed in the graphic window.\cr
You can export the map in raster or vector format (pdf).
}
\author{
Timothee Giraud - UMS RIATE (CNRS)
}
\seealso{
  \tabular{ll}{
  \link[=rCarto-package]{rCarto-package} \tab rCarto package \cr
  \link[=mapCircles]{mapCircles} \tab proportional circles \cr
  \link[=mapCirclesChoro]{mapCirclesChoro} \tab proportional circles colored by a discretized quantitative variable\cr
  \link[=mapCirclesTypo]{mapCirclesTypo} \tab proportional circles colored by the modalities of a qualitative variable\cr
  \link[=mapChoropleth]{mapChoropleth} \tab choropleth \cr
  \link[=mapChoroTypo]{mapChoroTypo} \tab typology \cr
  \link[=mtq]{mtq} \tab data \cr
  \link[=commune]{commune} \tab shapefile \cr
  }
}
\examples{
library(rCarto)
data(mtq)

# minimal example
mtq$POPVAR <- (mtq$P09_POP-mtq$P99_POP) / mtq$P99_POP
mapCirclesChoro(shpFile=file.path(path.package("rCarto"), "shapes/COMMUNE"),
                shpId="INSEE_COM",df=mtq,dfId="ID",var="P09_POP",var2="POPVAR")
}