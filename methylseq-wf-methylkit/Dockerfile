# starting with base miniconda/mamba image 
FROM condaforge/mambaforge:22.11.1-4

# installing wanted programs
RUN mamba install -y -c conda-forge -c bioconda -c defaults r-base==4.1.3 \
          bioconductor-methylkit==1.20.0 bioconductor-genomation==1.26.0 r-tidyverse==1.3.2 r-optparse
