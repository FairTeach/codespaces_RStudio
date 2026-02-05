#!/usr/bin/env Rscript
options(repos = c(CRAN = "https://packagemanager.posit.co/cran/__linux__/jammy/latest"))
cran_packages <- c(
  "tidyverse", "ggplot2", "hexbin", "pheatmap", "RColorBrewer",
  "ggbeeswarm", "dplyr", "ggrepel", "ggnewscale", "tidyr",
  "readr", "GGally", "dbplyr", "languageserver"
)
bioc_packages <- c(
  "airway", "SummarizedExperiment", "DESeq2", "vsn", "apeglm",
  "AnnotationDbi", "org.Hs.eg.db", "clusterProfiler", "enrichplot",
  "DOSE", "IsoformSwitchAnalyzeR"
)
install.packages("BiocManager", update = FALSE, ask = FALSE)
BiocManager::install(unique(bioc_packages), update = FALSE, ask = FALSE)
install.packages(unique(cran_packages), update = FALSE, ask = FALSE)
