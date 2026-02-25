# codespaces_RStudio

[![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://codespaces.new/FairTeach/codespaces_RStudio?quickstart=1)
[![Reopen My Codespace](https://img.shields.io/badge/Return%20to-GitHub%20Codespaces-181717?logo=github)](https://github.com/codespaces)

Reproducible teaching labs for RNA-seq and R programming built around GitHub Codespaces. This repo ships a full RStudio Server IDE, an optional desktop-lite workflow, and a mamba-managed toolkit so every student lands in the same environment regardless of their laptop.

## Launch a brand-new Codespace
1. Click **Open in GitHub Codespaces**. GitHub provisions a Codespace from `.devcontainer/devcontainer.json`.
2. Initial creation installs Ubuntu packages, R/Bioconductor libraries, and CLI tools�plan for **20�30 minutes**. Keep the tab open until the build completes.
3. Once VS Code opens, run:
   ```bash
   rstudio-server start
   ```
4. Port **8787** auto-forwards. Use the notification or Ports tab to open RStudio (user `rstudio`, password `rstudio`).

## Resume an existing Codespace
1. Click **Reopen My Codespace** and pick the workspace you created earlier.
2. Because packages are already cached, it resumes in seconds.
3. Restart RStudio with `rstudio-server start` if needed and reopen port 8787.

## What you get
- **RStudio Server 2023.x** exposed on port 8787 via the Rocker devcontainer feature.
- **XFCE desktop + noVNC bridge** (desktop-lite feature) so you can run full GUI apps inside the Codespace when enabled.
- **Conda/mamba toolchain** (Miniforge feature) for FastQC, MultiQC, Salmon, STAR, samtools, seqtk, bedtools, etc. (`env/mamba-environment.yml`).
- **Pre-installed R/Bioconductor stack** covering all supplied practicals (DESeq2, airway, IsoformSwitchAnalyzeR, clusterProfiler, ...).
- **Ready-to-teach content**: Rmd notebooks, docs, and data mirrored from the original Gitpod-based course.

## Repository layout
- `docs/` � grading material and supporting markdown.
- `env/` � shared config such as `mamba-environment.yml` and R data sets.
- `figures/` � reference screenshots.
- `rocker/` � legacy Dockerfiles.
- `*.Rmd` � the teaching notebooks students run in RStudio.

## Pre-installed R packages
The post-create hook runs `.devcontainer/scripts/install-r-packages.R`, ensuring:
- airway, SummarizedExperiment, DESeq2, vsn, apeglm, AnnotationDbi, org.Hs.eg.db
- clusterProfiler, enrichplot, DOSE, IsoformSwitchAnalyzeR
- tidyverse, ggplot2, ggnewscale, ggbeeswarm, ggrepel, pheatmap, RColorBrewer, dbplyr, tidyr, readr, GGally
Add more via that script as needed.

## Local VS Code / Dev Container usage
```bash
# Requires Docker + VS Code Dev Containers extension
git clone https://github.com/FairTeach/codespaces_RStudio.git
cd codespaces_RStudio
code .
# When prompted, "Reopen in Container"
```
Same devcontainer features run locally, so behavior matches Codespaces.

## Managing CLI dependencies with mamba
Miniforge installs mamba under `/opt/conda`. The bootstrap script creates/updates `rnaseq-tools` defined in `env/mamba-environment.yml`:
```bash
mamba activate rnaseq-tools
multiqc --help
```
Add extra tools (e.g., gffcompare, bwa, hisat2) to the YAML and rebuild or run `mamba env update` inside the Codespace.

## Troubleshooting tips
- Rebuild the container (`Codespaces / Rebuild container`) after changing `.devcontainer/**`, `env/mamba-environment.yml`, or bootstrap scripts.
- If RStudio Server doesn�t start, check the Ports tab for 8787; restart with `rstudio-server stop` / `rstudio-server start`.
- Desktop-lite can be toggled via the command palette (`Codespaces: Open in Browser`) if you need the VNC desktop.

Happy teaching!