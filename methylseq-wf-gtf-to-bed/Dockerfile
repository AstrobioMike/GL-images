# starting with base miniconda/mamba image 
FROM condaforge/mambaforge:22.11.1-4

# installing wanted programs
RUN mamba install -y -c conda-forge -c bioconda -c defaults ucsc-gtftogenepred==377 ucsc-genepredtobed==377
