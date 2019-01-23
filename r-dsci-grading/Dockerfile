# Copyright (c) UBC-DSCI Development Team.
# Distributed under the terms of the Modified BSD License.
FROM ubcdsci/r-dsci-100

# Install nbgrader for grading
USER root
RUN git clone https://github.com/jupyter/nbgrader
RUN conda install jupyter
RUN cd nbgrader && pip install -r dev-requirements.txt -e . --no-cache-dir
RUN jupyter nbextension install --sys-prefix --py nbgrader --overwrite
RUN jupyter nbextension enable --sys-prefix --py nbgrader
RUN jupyter serverextension enable --sys-prefix --py nbgrader

# switch back to jupyter user
USER jupyter
