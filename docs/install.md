# running the notebook

To run the notebook in a docker container on your machine

- Clone this repository:

  `git clone https://github.com/eoas-ubc/docker-stacks`  
  `git checkout -b tlef origin/tlev`
  `cd dsci-stacks`

- Build the container



https://github.com/jupyter/docker-stacks/blob/master/base-notebook/Dockerfile
https://github.com/jupyter/docker-stacks/blob/master/r-notebook/Dockerfile

* starting the notebook

* setting the token

export JUPYTER_TOKEN=71b9cf219f1e193adf772685f9b03479ee8749412847028243b003fdb40d650d56ac597

#!/bin/bash
xdg-open http://127.0.0.1:8888/?token=${JUPYTER_TOKEN}


docker run --rm -it -v $NBDIR:/mounted jupyter/base-notebook /bin/bash

docker exec -it r_dsci100_mar19 /bin/bash


ansible-playbook -i ~/repos/ansible-playbooks/setup_ubuntu2004/hosts.yaml -l n1 --tags addgroup,adduser playbook.yml



