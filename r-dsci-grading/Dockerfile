# Copyright (c) UBC-DSCI Development Team.
# Distributed under the terms of the Modified BSD License.
FROM ubcdsci/r-dsci-100

# Install nbgrader for grading
USER root
RUN pip install nbgrader

# Overwrite workdir
#WORKDIR /assignments

# Note: some of the user permissions may need to be changed as well.
USER jupyter
# Configure environment
ENV NB_USER=jupyter \
    NB_UID=9999
ENV HOME=/home/$NB_USER

# RUN chown -R grader:grader /home/grader
# USER grader

# Add entrypoint
ENTRYPOINT ["tini", "--", "nbgrader"]
CMD ["--help"]
