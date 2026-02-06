---
title: "Workflows"
author: "Igor Ruiz de los Mozos"
output: 
  pdf_document: NULL
  html_document: NULL
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

# Snakemake and Nextflow workflows

Both [Snakemake](https://snakemake.readthedocs.io/en/stable/#) and [Nextflow](https://www.nextflow.io/) are workflow management systems commonly used in bioinformatics and other scientific fields for reproducible and scalable data analysis pipelines. Let's delve into their advantages in various aspects:

## Advantages Beyond Reproducibility:

1. **Adaptability**:

** Snakemake: ** Uses a Python-like syntax, allowing users to leverage the full power of Python for pipeline development.
Nextflow: Utilizes a domain-specific language (DSL) specifically designed for defining data analysis workflows, offering flexibility and ease of use.

2. **Transparency**:

** Snakemake: ** Provides clear and readable rules and dependencies, making it easy to understand the workflow structure.
Nextflow: Offers clear visualization of workflow structure, aiding in understanding and debugging.
Automation:

** Snakemake: ** Automatically handles job scheduling and execution, optimizing resource utilization.
Nextflow: Supports automatic parallelization and execution of tasks across distributed computing environments, enhancing efficiency.
Scalability:

** Snakemake: ** Scales from small-scale local computations to large-scale distributed computing environments (e.g., clusters, cloud).
Nextflow: Designed for scalability, enabling seamless execution on distributed computing infrastructures.
Portability:

** Snakemake: ** Portable across different computing environments with minimal modifications.
Nextflow: Offers native support for containerization technologies (e.g., Docker, Singularity), ensuring reproducibility and portability across diverse platforms.
Readability:

** Snakemake: ** Uses a human-readable format, making it easy for both novice and experienced users to understand and modify workflows.
Nextflow: Employs a concise DSL syntax, enhancing readability and maintainability of workflow scripts.
Documentation:

** Snakemake: ** Provides comprehensive documentation, tutorials, and community support, facilitating learning and troubleshooting.
Nextflow: Offers extensive documentation, tutorials, and active community forums, enabling users to quickly get started and resolve issues.

## Advantages on Sustainability:

1. **Community Support**:

Both Snakemake and Nextflow benefit from vibrant user communities, ensuring continuous development, support, and improvement.

2. **Long-Term Maintenance**:

Regular updates and contributions from the community ensure that both tools remain relevant and compatible with evolving technologies and requirements.

3. **Open Source**:

Both Snakemake and Nextflow are open-source projects, fostering collaboration, innovation, and sustainability in the scientific community.

4. **Interoperability**:

Both tools support interoperability with other bioinformatics tools and standards, promoting integration into existing workflows and pipelines.

5. **Extensibility**:

The modular architecture of both Snakemake and Nextflow allows for easy extension and customization, accommodating diverse user needs and requirements.
In summary, beyond reproducibility, Snakemake and Nextflow offer numerous advantages in adaptability, transparency, automation, scalability, portability, readability, and documentation, contributing to their sustainability and widespread adoption in scientific research and data analysis.

# Nextflow

Nextflow provides comprehensive documentation, tutorials, cheat sheets, and manuals to help users learn and master the platform. Here are some resources:

1. **Nextflow Documentation**:
   - The official Nextflow documentation is an excellent starting point for learning about Nextflow and its features. It covers installation instructions, getting started guides, syntax reference, and advanced topics.
   - Documentation Link: [Nextflow Documentation](https://www.nextflow.io/docs/latest/index.html)

2. **Nextflow Tutorials**:
   - Nextflow offers a series of tutorials covering various topics, including basic concepts, workflow creation, usage of containers, handling errors, and deploying workflows on different computing environments.
   - Nextflow Tutorials [Nextflow Tutorial](https://nf-co.re/docs/usage/tutorials/nextflow)
   - Tutorial Link: [Nextflow Training](https://training.nextflow.io/)
   - Seqera Training: [Seqera Training](https://training.seqera.io/)
   - Nextflow the basics: [Nextflow the basics](https://andersenlab.org/dry-guide/2022-03-09/writing-nextflow/#the_basics)

3. **Nextflow Cheat Sheets**:
   - Nextflow provides cheat sheets summarizing key commands, syntax, and best practices for writing Nextflow scripts. These cheat sheets serve as handy reference guides for users.
   - Tips and cheatsheet for Nextflow: [Tips and cheatsheet for Nextflow](https://github.com/danrlu/nextflow_cheatsheet/blob/main/README.md)
   - Cheat Sheet Link: [Nextflow Cheat Sheet](https://github.com/danrlu/Nextflow_cheatsheet/blob/main/nextflow_cheatsheet.pdf)
   - Nextflow DSL2: [Nextflow DSL2](https://github.com/danrlu/nextflow_cheatsheet/blob/main/nextflow_convert_DSL2.pdf)

4. **Nextflow Blog and Community Forum**:
   - The Nextflow website hosts a blog featuring articles, case studies, and updates related to Nextflow development and usage. Additionally, users can engage with the Nextflow community through the forum to ask questions, share experiences, and seek help.
   - Blog Link: [Nextflow Blog](https://www.nextflow.io/blog/index.html)
   - Community Forum: [Nextflow Community](https://community.seqera.io/)
   - Nextflow Slack: [Nextflow Slack](https://app.slack.com/)

5. **Nextflow GitHub Repository**:
   - Nextflow's GitHub repository contains the source code, issues, and discussions related to Nextflow development. Users can explore the repository to understand the inner workings of Nextflow and contribute to its development.
   - GitHub Link: [Nextflow GitHub Repository](https://github.com/nextflow-io/nextflow)

6. **Nextflow Training Workshops**:
   - Nextflow occasionally organizes training workshops and webinars to provide hands-on experience and guidance to users. These workshops cover a range of topics and are conducted by experts in the field.
   - Keep an eye on the Nextflow website and community channels for announcements regarding upcoming training events.
   - Nextflow Training Workshop: [Nextflow Training Workshop](https://training.nextflow.io/)
   - Nextflow events: [Nextflow event](https://nf-co.re/events)

7. **Nextflow Paterns**:
  - Nextflow predefined channel patterns: [Nextflow predefined channel patterns](https://github.com/nextflow-io/patterns)

By leveraging these resources, users can effectively learn Nextflow, improve their workflow development skills, and stay updated with the latest features and developments in the platform.

# nf-core

## Introduction

[nf-core](https://nf-co.re/) is a community effort to collect a curated set of Nextflow pipelines. Each pipeline in nf-core follows strict guidelines and best practices for reproducibility, scalability, and maintainability.

## Features

- **Reproducibility**: All nf-core pipelines are version-controlled, containerized, and tested on continuous integration (CI) platforms to ensure reproducibility.
- **Scalability**: Pipelines are designed to scale from single-core machines to high-performance computing (HPC) clusters and cloud environments.
- **Modularity**: Each pipeline is modular, allowing users to easily customize and extend functionality as needed.
- **Documentation**: Comprehensive documentation is provided for each pipeline, including installation instructions, usage guidelines, and troubleshooting tips.
- **Community**: nf-core has a vibrant community of users and contributors who collaborate on pipeline development, testing, and support.

## Pipelines

nf-core offers a growing collection of pipelines covering a wide range of bioinformatics applications, including:
- [RNA-seq](https://nf-co.re/rnaseq)
- [ChIP-seq](https://nf-co.re/chipseq)
- [ATAC-seq](https://nf-co.re/atacseq)
- [Single-cell RNA-seq](https://nf-co.re/sc)
- [Variant calling](https://nf-co.re/variantcalling)
- [Metagenomics](https://nf-co.re/mg)
- [Proteomics](https://nf-co.re/proteomics)
- [Epigenomics](https://nf-co.re/epigenomics)
- [And many more](https://nf-co.re/pipelines)

## Usage

To use an nf-core pipeline, simply clone the repository and execute the pipeline using Nextflow:
```bash
git clone https://github.com/nf-core/pipeline_name.git
cd pipeline_name
nextflow run main.nf --input input.fastq --param1 value1 --param2 value2

```

# Snakemake

## Introduction

[Snakemake](https://snakemake.readthedocs.io/) is a workflow management system written in Python. It allows users to define data analysis pipelines in a human-readable and reproducible manner.

## Features

- **Declarative**: Snakemake uses a Python-like syntax to define workflows, making it easy to read and write pipeline scripts.
- **Reproducibility**: Pipelines are reproducible by design, with explicit dependency tracking and version control for input data and software environments.
- **Scalability**: Snakemake can run workflows on single-core machines, multi-core systems, clusters, and cloud environments, providing scalability as needed.
- **Portability**: Pipelines are portable across different computing environments, with support for containerization technologies like Docker and Singularity.
- **Ease of Use**: Snakemake simplifies workflow development and management through automatic job scheduling, parallelization, and error handling.
- **Community**: Snakemake has a large and active community of users and contributors who provide support, tutorials, and extensions.

## Pipelines

Snakemake can be used to build pipelines for a wide range of bioinformatics and data analysis tasks, including:

- Snakemake Pipelines: [Snakemake workflows](https://github.com/snakemake-workflows)
- Genome assembly
- RNA-seq analysis: [RNA-seq analysis](https://github.com/snakemake-workflows/rna-seq-star-deseq2)
- RNA-seq DTU: [Kalisto Sleuth](https://github.com/snakemake-workflows/rna-seq-kallisto-sleuth)
- ChIP-seq analysis: [ChIP-seq](https://github.com/snakemake-workflows/chipseq)
- Variant calling: [Variant calling](https://github.com/snakemake-workflows/dna-seq-mtb)
- Variant calling: [GATK Variant calling](https://github.com/snakemake-workflows/dna-seq-gatk-variant-calling)
- Single cell DROP-seq: [Single cell DROP-seq](https://github.com/snakemake-workflows/single-cell-drop-seq)
- Single cell RNA-seq: [Single cell RNA-seq](https://github.com/snakemake-workflows/single-cell-rna-seq)
- And many more

## Snakemake Tutorial

This tutorial introduces the text-based workflow system Snakemake. Snakemake follows the GNU Make paradigm: workflows are defined in terms of rules that define how to create output files from input files. Dependencies between the rules are determined automatically, creating a DAG (directed acyclic graph) of jobs that can be automatically parallelized.

Snakemake sets itself apart from other text-based workflow systems in the following way. Hooking into the Python interpreter, Snakemake offers a definition language that is an extension of Python with syntax to define rules and workflow specific properties. This allows Snakemake to combine the flexibility of a plain scripting language with a pythonic workflow definition. The Python language is known to be concise yet readable and can appear almost like pseudo-code. The syntactic extensions provided by Snakemake maintain this property for the definition of the workflow. Further, Snakemake’s scheduling algorithm can be constrained by priorities, provided cores and customizable resources and it provides a generic support for distributed computing (e.g., cluster or batch systems). Hence, a Snakemake workflow scales without modification from single core workstations and multi-core servers to cluster or batch systems. Finally, Snakemake integrates with the package manager Conda and the container engine Singularity such that defining the software stack becomes part of the workflow itself.

The examples presented in this tutorial come from Bioinformatics. However, Snakemake is a general-purpose workflow management system for any discipline. We ensured that no bioinformatics knowledge is needed to understand the tutorial.

## Slides 

Also have a look at the corresponding **slides** [https://slides.com/johanneskoester/snakemake-tutorial](https://slides.com/johanneskoester/snakemake-tutorial)


## Run tutorial for free in the cloud via Gitpod

A common thing to happen while using the development environment in GitPod is to hit Ctrl-s while in the terminal window, because you wanted to save a file in the editor window. This will freeze up you terminal. To get it back, make sure you selected the terminal window by clicking on it and then hit Ctrl-q.

The easiest way to run this tutorial is to use Gitpod, which enables performing the exercises via your browser—including all required software, for free and in the cloud. In order to do this, simply open the predefined [snakemake-tutorial GitPod workspace](https://gitpod.io/#https://github.com/snakemake/snakemake-tutorial-data) in your browser. GitPod provides you with a Theia [](https://theia-ide.org/docs/blueprint_documentation/development) environment, which you can learn about in the linked documentation. Once you have a basic understanding of this environment, you can go on directly with [Basics: An example workflow.](https://snakemake.readthedocs.io/en/stable/tutorial/basics.html#tutorial-basics)

# Other Workflows

[workflowhub](https://workflowhub.eu/workflows)


```
