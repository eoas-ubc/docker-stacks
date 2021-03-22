# running the notebook

To run the notebook in a docker container on your machine

- Clone this repository:

  `git clone https://github.com/eoas-ubc/docker-stacks`  
  `git checkout -b tlef origin/tlev`  
  `cd dsci-stacks`

- create a token using [make_token.sh](https://github.com/eoas-ubc/docker-stacks/blob/tlef/make_token.sh)  (assuming you have a bash shell) and read it into the exported environmental variable JUPYTER_TOKEN and the file token.txt

  `. make_token.sh`

- copy that token into c.NotebookApp.token in [jupyter_notebook_config.py](https://github.com/eoas-ubc/docker-stacks/blob/tlef/r-dsci-100/jupyter_notebook_config.py)

- edit [docker-compose.yml](https://github.com/eoas-ubc/docker-stacks/blob/tlef/docker-compose.yml) so that the bind-mounted volume points to your local clone of the dsci-100-instructor repo (I've cloned mine into /home/jupyter/dsci-100-instructor)

- build the container with:

  `docker-compose build dsci100_mar19`

- bring up the container on 127.0.0.1:8888

  - `docker-compose up`

- open your web browser  to run the notebooks

  - on a mac `open http://127.0.0.1:8888/?token=${JUPYTER_TOKEN}`  
  - on linux `xdg-open http://127.0.0.1:8888/?token=${JUPYTER_TOKEN}`  





