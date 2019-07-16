# Copyright (c) UBC-DSCI Development Team.
# Distributed under the terms of the Modified BSD License.
ARG BASE_CONTAINER=ubcdsci/r-dsci-100
FROM $BASE_CONTAINER

LABEL maintainer="Tiffany Timbers <tiffany.timbers@gmail.com>"

RUN conda install --quiet --yes -c anaconda jupyter_client \
  python-dateutil

# install nbgrader and fix run issues
RUN pip install alembic
RUN pip install git+https://github.com/jupyter/nbgrader
RUN yes | pip uninstall ipython
RUN pip install ipykernel
RUN jupyter nbextension install --sys-prefix --py nbgrader --overwrite
RUN jupyter nbextension enable --sys-prefix --py nbgrader
RUN jupyter serverextension enable --sys-prefix --py nbgrader

