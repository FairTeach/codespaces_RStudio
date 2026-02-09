#!/usr/bin/env bash
set -euo pipefail

# Rocker r-ver image already ships with required system libraries.
# Ensure UTF-8 locale just in case.
if ! locale -a | grep -q "en_US.utf8"; then
  sudo locale-gen en_US.UTF-8
fi

echo "LANG=en_US.UTF-8" | sudo tee /etc/default/locale

# Install Bioconductor/CRAN dependencies not covered by features
sudo Rscript .devcontainer/scripts/install-r-packages.R

# Persist conda activation (Miniforge feature)
if ! grep -q "/opt/conda/etc/profile.d/conda.sh" ~/.bashrc; then
  {
    echo ". /opt/conda/etc/profile.d/conda.sh"
    echo "conda activate rnaseq-tools"
  } >> ~/.bashrc
fi
