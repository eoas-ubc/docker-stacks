# Copyright (c) Jupyter Development Team.
# Distributed under the terms of the Modified BSD License.
ARG BASE_CONTAINER=jupyter/r-notebook
FROM $BASE_CONTAINER

LABEL maintainer="Tiffany Timbers <tiffany.timbers@gmail.com>"

# R packages on conda-forge
RUN conda install --quiet --yes -c conda-forge \
  r-infer=0.4* \
  r-rtsne=0* \
  r-ggally=1.4* \
  r-gridextra=2.3* \
  r-testthat=2.1* 

# THIS WILL BE REMOVED ONCE THIS PR IS MERGED: https://github.com/jupyter/docker-stacks/pull/890
# Install e1071 R package (dependency of the caret R package)
RUN conda install --quiet --yes r-e1071

USER jupyter
# Configure environment
ENV NB_USER=jupyter \
    NB_UID=9999
ENV HOME=/home/$NB_USER
