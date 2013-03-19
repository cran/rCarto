\name{rCarto-package}
\alias{rCarto-package}
\alias{rCarto}
\docType{package}
\title{
Maps with Full Cartographic Layout
}
\description{
This package makes some maps using shapefiles and dataframes. Five kinds of maps are available: 
  \itemize{
   \item proportionnal circles
   \item proportionnal circles colored by discretized quantitative data
   \item proportionnal circles colored by modalities of qualitative data
   \item choropleth
   \item typology
  }
}
\details{
  \tabular{ll}{
  Package: \tab rCarto\cr
  Type: \tab Package\cr
  Version: \tab 0.8\cr
  Date: \tab 2013-03-19\cr
  License: \tab GPL (>=2.0)
  }
}
\author{
Timothee Giraud - UMS RIATE (CNRS)\cr
<timothee.giraud@ums-riate.fr>
}
\references{
RColorBrewer, maptools, classInt and rgrs packages

Bivand, Roger S., Pebesma, Edzer J., Gomez-Rubio, Virgilio, 2008, Applied Spatial Data Analysis with R, Springer.

Tanimura, S., Kuroiwa, C., and Mizota, T. (2006) Proportional symbol mapping in R. Journal of Statistical Software 15(5). http://www.jstatsoft.org/v15/i05/paper
}

\note{
Some part of the code (legend position, management of diverging color palettes) are inspired by some functions of the \code{rgrs} package.
}


\keyword{ package }
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
