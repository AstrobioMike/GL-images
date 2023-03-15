# starting with base miniconda/mamba image 
FROM condaforge/mambaforge:22.11.1-4

# installing wanted programs
RUN mamba install -y -c conda-forge -c bioconda -c defaults samtools=1.16.1 qualimap=2.2.2d
