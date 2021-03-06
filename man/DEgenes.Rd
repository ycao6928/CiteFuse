% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/DEgenes.R
\name{DEgenes}
\alias{DEgenes}
\title{DEgenes}
\usage{
DEgenes(
  sce,
  altExp_name = "none",
  exprs_value = "logcounts",
  group = NULL,
  method = "wilcox",
  exprs_pct = 0.1,
  exprs_threshold = 0,
  return_all = FALSE,
  pval_adj = 0.05,
  mean_diff = 0,
  pct_diff = 0.1,
  topN = 10
)
}
\arguments{
\item{sce}{A SingleCellExperiment object}

\item{altExp_name}{A character indicates which expression matrix is used.
by default is none (i.e. RNA).}

\item{exprs_value}{A character indicates which expression value
in assayNames is used.}

\item{group}{A vector indicates the grouping of the data}

\item{method}{A character indicates the method used in DE analysis}

\item{exprs_pct}{A numeric indicates the threshold expression percentage
of a gene to be considered in DE analysis}

\item{exprs_threshold}{A numeric indicates the threshold of expression.
By default is 0.}

\item{return_all}{Whether return full list of DE genes}

\item{pval_adj}{A numeric indicates the threshold of adjusted p-value.}

\item{mean_diff}{A numeric indicates the threshold of
difference of average expression.}

\item{pct_diff}{A numeric indicates the threshold of
difference of percentage expression.}

\item{topN}{A numeric indicates the top number of genes
will be included in the list.}
}
\value{
A SingleCellExeperiment with DE results stored in meta data DE_res
}
\description{
A function to perform DE analysis on CITE seq data
}
\examples{
data("sce_control_subset", package = "CiteFuse")
sce_control_subset <- DEgenes(sce_control_subset,
group = sce_control_subset$SNF_W_louvain,
return_all = TRUE,
exprs_pct = 0.5)

sce_control_subset <- selectDEgenes(sce_control_subset)

}
