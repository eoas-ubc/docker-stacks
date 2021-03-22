# running notebooks in a container

To run notebooks in a docker container on your machine you need a local clone of dsci-100-instructor.  On windows or mac this can be owned by you.  On linux it needs to be owned by user jupyter with uid 9999

- Next clone this repository:

  `git clone https://github.com/eoas-ubc/docker-stacks`  
  `cd dsci-stacks`
  `git checkout -b tlef origin/tlev`  


- create a token using [make_token.sh](https://github.com/eoas-ubc/docker-stacks/blob/tlef/make_token.sh)  (assuming you have a bash shell) and read it into the exported environmental variable JUPYTER_TOKEN and the file token.txt

  `. make_token.sh`

- copy that token into c.NotebookApp.token in [jupyter_notebook_config.py](https://github.com/eoas-ubc/docker-stacks/blob/tlef/r-dsci-100/jupyter_notebook_config.py)

- install ansible
  `conda install -c conda-forge ansible`

- use ansible to create a new user called jupyter

  `cd ansible`  
  `ansible-playbook playbook.yml -i hosts.yml --extra-vars "ansible_become_pass=password"`

- make a new directory called `/home/jupyter/data_share`
  `sudo su - jupyter`  
  `mkdir -p /home/jupyter/data_share`    
  
  - then you'll need to  clone dsci-100-instructor into data_share (make sure you do this as user jupyter)

- build the container with:

  `docker-compose build dsci100_mar19`

- bring up the container on 127.0.0.1:8888

  - `docker-compose up`

- open your web browser  to run the notebooks

  - on a mac `open http://127.0.0.1:8888/?token=${JUPYTER_TOKEN}`  
  - on linux `xdg-open http://127.0.0.1:8888/?token=${JUPYTER_TOKEN}`  
  - on windows `wslview http://127.0.0.1:8888/?token=${JUPYTER_TOKEN}`  




