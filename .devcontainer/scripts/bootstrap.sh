#!/usr/bin/env bash
set -euo pipefail

# Minimal native build toolchain for R/Bioconductor source installs.
# (git/wget/locales already provided by the base image.)
APT_DEPS=(
  build-essential
  libssl-dev
  libcurl4-openssl-dev
  libxml2-dev
  libfontconfig1-dev
  libharfbuzz-dev
  libfribidi-dev
  libfreetype6-dev
  libpng-dev
  libtiff5-dev
  libjpeg-dev
  libgsl-dev
  libxt-dev
  libglpk-dev
  libudunits2-dev
)
if [ "${#APT_DEPS[@]}" -gt 0 ]; then
  sudo apt-get update
  sudo DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends "${APT_DEPS[@]}"
  sudo apt-get clean
  sudo rm -rf /var/lib/apt/lists/*
fi

# Guarantee UTF-8 locale for RStudio sessions
if ! locale -a | grep -q "en_US.utf8"; then
  sudo locale-gen en_US.UTF-8
fi

echo "LANG=en_US.UTF-8" | sudo tee /etc/default/locale

# Install any remaining R/Bioconductor deps not covered by the r-packages feature
sudo Rscript .devcontainer/scripts/install-r-packages.R

# Bootstrap the conda/mamba toolchain for CLI bioinformatics utilities
# if [ -f "env/mamba-environment.yml" ]; then
#   if mamba env list | grep -q '^rnaseq-tools'; then
#     mamba env update -f env/mamba-environment.yml
#   else
#     mamba env create -f env/mamba-environment.yml
#   fi
# fi

# Persist conda activation in bash shells
if ! grep -q "/opt/conda/etc/profile.d/conda.sh" ~/.bashrc; then
  {
    echo ". /opt/conda/etc/profile.d/conda.sh"
    echo "conda activate rnaseq-tools"
  } >> ~/.bashrc
fi
