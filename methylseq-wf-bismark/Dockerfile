# starting with base miniconda/mamba image 
FROM condaforge/mambaforge:22.11.1-4

# installing wanted programs
RUN mamba install -y -c conda-forge -c bioconda -c defaults python=3.9 bismark==0.23.1 bowtie2==2.4.4 samtools==1.16.1 zip==3.0
