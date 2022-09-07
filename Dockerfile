# starting with base miniconda image 
FROM continuumio/miniconda3:4.12.0

# installing mamba
RUN conda install -y -c conda-forge mamba

# installing wanted programs
RUN mamba install -y -c conda-forge -c bioconda -c defaults samtools=1.13 qualimap=2.2.2d
