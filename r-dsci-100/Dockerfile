# Copyright (c) UBC-DSCI Development Team.
# Distributed under the terms of the Modified BSD License.
FROM jupyter/r-notebook


RUN pip install git+https://github.com/data-8/nbgitpuller \
 && jupyter serverextension enable --sys-prefix nbgitpuller

# R packages
RUN conda install --quiet --yes \
    'r-testthat=2.0*' \
    'r-plotly=4.7*' \
    'r-repr=0.15*' && \
    conda clean -tipsy && \
    fix-permissions $CONDA_DIR

RUN Rscript -e "install.packages('infer', repos = 'http://cran.us.r-project.org')"
RUN Rscript -e "install.packages('scatterplot3d', repos = 'http://cran.us.r-project.org')"

USER root
RUN useradd -m -s /bin/bash -N -u 1002 dsci100
USER dsci100
# Configure environment
ENV NB_USER=dsci100 \
    NB_UID=1002
ENV HOME=/home/$NB_USER
WORKDIR $HOME
