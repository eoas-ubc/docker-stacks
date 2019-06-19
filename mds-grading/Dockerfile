# Copyright (c) UBC-DSCI Development Team.
# Distributed under the terms of the Modified BSD License.
FROM ubcdsci/r-dsci-100

# Install nbgrader for grading
ENV NB_USER=jovyan
ENV HOME=/home/$NB_USER
USER $NB_USER
RUN conda install -c anaconda jupyter_client
RUN conda install -c anaconda python-dateutil

# install nbgrader and fix run issues
RUN pip install alembic
RUN pip install git+https://github.com/jupyter/nbgrader
RUN yes | pip uninstall ipython
RUN pip install ipykernel
RUN jupyter nbextension install --sys-prefix --py nbgrader --overwrite
RUN jupyter nbextension enable --sys-prefix --py nbgrader
RUN jupyter serverextension enable --sys-prefix --py nbgrader

# switch back to jupyter user
ENV NB_USER=jupyter
ENV HOME=/home/$NB_USER
USER $NB_USER
RUN pip install --user altair vega_datasets notebook vega
RUN pip install --user graphviz
