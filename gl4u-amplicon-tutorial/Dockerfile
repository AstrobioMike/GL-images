### starting with base miniconda/mamba image ###
FROM condaforge/mambaforge:22.11.1-4

### installing wanted utilities ###
# setting this so nothing is asked during installs
ENV DEBIAN_FRONTEND=noninteractive

# done all together to avoid things being done in multiple layers

RUN apt update \
    && apt install -y \
        nano \
        man-db \
        manpages \
        tzdata \
    && rm -rf /var/lib/apt/lists/*

### installing wanted general programs ###
RUN mamba install -y -c conda-forge -c bioconda -c defaults \
                  jupyterlab=3.6.0 bash_kernel=0.9.0 r-irkernel=1.3.2 coreutils=9.1 \
                  r-base=4.1.3 r-tidyverse=1.3.2 r-vegan=2.6_4 r-dendextend=1.16.0 \
                  bioconductor-dada2=1.22.0 bioconductor-decipher=2.22.0 bioconductor-phyloseq=1.38.0 \
                  bioconductor-deseq2=1.34.0 fastqc=0.11.9 multiqc=1.12
