% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/DEgenes.R
\name{DEgenesCross}
\alias{DEgenesCross}
\title{DEgenesCross}
\usage{
DEgenesCross(
  sce_list,
  altExp_name = "none",
  exprs_value = "logcounts",
  method = "wilcox",
  colData_name = NULL,
  group_to_test = NULL,
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
\item{sce_list}{A Slist of ingleCellExperiment object}

\item{altExp_name}{A character indicates which expression matrix is
used. by default is none (i.e. RNA).}

\item{exprs_value}{A character indicates which expression value in
assayNames is used.}

\item{method}{A character indicates the method used in DE analysis}

\item{colData_name}{A vector of character indicates the colData that
stored the group information of each sce of the sce_list}

\item{group_to_test}{A vector of character indicates which group in each
sce is used to compared across the sce list.}

\item{exprs_pct}{A numeric indicates the threshold expression percentage
of a gene to be considered in DE analysis}

\item{exprs_threshold}{A numeric indicates the threshold of expression.
By default is 0.}

\item{return_all}{Whether return full list of DE genes}

\item{pval_adj}{A numeric indicates the threshold of adjusted p-value.}

\item{mean_diff}{A numeric indicates the threshold of difference of
average expression.}

\item{pct_diff}{A numeric indicates the threshold of difference of
percentage expression.}

\item{topN}{A numeric indicates the top number of genes will be
included in the list.}
}
\value{
A SingleCellExeperiment with DE results stored in meta data DE_res
}
\description{
A function to perform DE analysis on a list of CITE seq data
}
