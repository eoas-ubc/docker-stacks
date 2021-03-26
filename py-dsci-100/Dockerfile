# Copyright (c) UBC-DSCI Development Team.
# Distributed under the terms of the Modified BSD License.
ARG BASE_CONTAINER=jupyter/scipy-notebook:latest
FROM $BASE_CONTAINER

LABEL maintainer="Phil Austin <paustin@eoas.ubc.ca>"

# Install more packages from conda-forge
RUN conda install --quiet --yes -c conda-forge \
  altair

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
