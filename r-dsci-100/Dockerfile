# Copyright (c) UBC-DSCI Development Team.
# Distributed under the terms of the Modified BSD License.
ARG BASE_CONTAINER=jupyter/r-notebook@sha256:38d5c53d93c02793d7dcade4db13c3f79a685b8cda700e36cded121ecc882bd2
FROM $BASE_CONTAINER

LABEL maintainer="Tiffany Timbers <tiffany.timbers@gmail.com>"

# Install R packages on conda-forge
RUN conda install --quiet --yes -c conda-forge \
  r-cowplot=1.* \
  r-ggally=1.5.* \
  r-gridextra=2.3.* \
  r-infer=0.5.* \
  r-kknn \
  r-testthat=2.3.* \
  r-rpostgres=1.2.*

# Install the palmerpenguins dataset
RUN Rscript -e "devtools::install_github('allisonhorst/palmerpenguins@v0.1.0')" 

# Install ISLR package for the Credit data set
RUN Rscript -e "install.packages('ISLR', repos='http://cran.us.r-project.org')"

# Install jupyter extensions (nbgitpuller, git, jupytext)
USER root

RUN pip install git+https://github.com/data-8/nbgitpuller \
    && jupyter serverextension enable --sys-prefix nbgitpuller \
    && jupyter labextension install @jupyterlab/git \
    && pip install jupyterlab-git \
    && jupyter serverextension enable --py jupyterlab_git \
    && pip install jupytext --upgrade \
    && jupyter labextension install @techrah/text-shortcuts \
    && jupyter lab build  
RUN useradd -m -s /bin/bash -N -u 9999 jupyter

COPY jupyter_notebook_config.py /etc/jupyter/
RUN mkdir -p /home/jupyter/data_share
RUN chown jupyter /home/jupyter/data_share
USER jupyter
# Configure jupyter user

ENV NB_USER=jupyter \
    NB_UID=9999
ENV HOME=/home/$NB_USER
WORKDIR $HOME
