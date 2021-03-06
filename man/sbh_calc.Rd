\name{sbh_calc}
\alias{sbh_calc}
\title{
Calculate mean geometric diameter and standard deviation
}
\description{
Calculate mean geometric diameter and standard deviation from particle size analysis data based on Shirazi et al. (1988).
}
\usage{
sbh_calc(psa, sys = "usda", plt = T, seg_dat = F)
}
\arguments{
  \item{psa}{
    Numeric vector - mass percentages of clay, silt and sand. E.g. c(20,30,50).
}
  \item{sys}{
    Character string - classification system used. Options: "au2", "iuss", "usda".  
}
  \item{plt_par}{
    Single boolean - should the parent distributions be plotted?
}
  \item{dat_par}{
    Single boolean - should the mean geometric diameter and standard 
    deviation of the parent distributions be returned?
}
}
\examples{
  ## calculate d_g and s_g
  res=sbh_calc(psa = c(20,30,50), sys = "usda", plt_par = T, dat_par = F)
  
  ## plot USDA TT
  sbTT_usda(add=F,cols="black",size=1)
  
  ## add point
  points(log10(res[1]),res[2], pch=16, col="red")
}
