# starting with base miniconda/mamba image 
FROM condaforge/mambaforge:22.11.1-4

# installing wanted programs
RUN mamba install -y -c conda-forge -c bioconda -c defaults fastqc==0.11.9 multiqc==1.12 zip==3.0
