% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/DEgenes.R
\name{DEcomparisonPlot}
\alias{DEcomparisonPlot}
\title{DEcomparisonPlot}
\usage{
DEcomparisonPlot(de_list, feature_list)
}
\arguments{
\item{de_list}{A list including two lists results from `DE genes ()`.}

\item{feature_list}{A list including two lists features indicating
the selected subset of features will be visualised}
}
\value{
A ggplot2 to visualise the comparison plot of DE.
}
\description{
A function to visualise the pairwise comparison of pvalue in
different data modality.
}
