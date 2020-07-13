# Jupyter DSCI 100 Stacks

Jupyter Docker Stacks are a set of ready-to-run [Docker images](https://hub.docker.com/u/jupyter) containing Jupyter applications and interactive computing tools for the DSCI 100 course.

## Run locally

In the terminal, navigate to the directory where you would like to edit your files and run:

```
docker run --rm -it -p 8888:8888 -v ${PWD}:/home/jupyter ubcdsci/r-dsci-100-grading:2020W1
```

Then copy the last url from what is output on your terminal into a browser and you should be able to see and edit your files via Jupyter.


