% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/QCfunctions.R
\name{plotHTO}
\alias{plotHTO}
\title{plotHTO}
\usage{
plotHTO(sce, which_idx = seq_len(2), altExp_name = NULL, ncol = 2)
}
\arguments{
\item{sce}{sce}

\item{which_idx}{which_idx}

\item{altExp_name}{altExp_name}

\item{ncol}{ncol}
}
\value{
A plot visualising the HTO expression
}
\description{
A function to plot HTO expression
}
\examples{
data("CITEseq_example", package = "CiteFuse")
sce_citeseq <- preprocessing(CITEseq_example)
sce_citeseq <- normaliseExprs(sce = sce_citeseq,
altExp_name = "HTO",
transform = "log")
plotHTO(sce_citeseq, 1:4)

}
