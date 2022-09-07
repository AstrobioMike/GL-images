# making image from conda yaml
# generally followed along with this page: https://blog.ceshine.net/post/replicate-conda-environment-in-docker/
# and one of Jonathan's: https://github.com/J-81/gl_dockerfiles/blob/gl_multiqc/Dockerfile

# starting with base miniconda image
FROM continuumio/miniconda:4.7.12

# Ensure no user interaction is requested
ARG DEBIAN_FRONTEND=noninteractive

# create group and user and install packages
RUN groupadd -r genuser && \
    useradd -g genuser genuser && \
    mkdir /home/genuser && \
    chmod -R 777 /home/genuser && \
    apt-get update

# installing mamba
RUN conda install -y -c conda-forge mamba

# installing environment.yaml
ADD ./environment.yaml .

RUN mamba env update --file ./environment.yaml && conda clean -tipy

# for interactive shell
RUN conda init bash
RUN echo "conda activate base" >> /home/genuser/.bashrc
