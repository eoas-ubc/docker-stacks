# Copyright (c) UBC-DSCI Development Team.
# Distributed under the terms of the Modified BSD License.
FROM ubcdsci/r-dsci-100

# Install nbgrader for grading
RUN pip install nbgrader

# Overwrite workdir
WORKDIR /assignments

# Note: some of the user permissions may need to be changed as well.

# Add entrypoint
ENTRYPOINT ["tini", "--", "nbgrader"]