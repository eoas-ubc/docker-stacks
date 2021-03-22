# running the notebook


https://github.com/jupyter/docker-stacks/blob/master/base-notebook/Dockerfile
https://github.com/jupyter/docker-stacks/blob/master/r-notebook/Dockerfile

* starting the notebook

* setting the token

export JUPYTER_TOKEN=71b9cf219f1e193adf772685f9b03479ee8749412847028243b003fdb40d650d56ac597

#!/bin/bash
xdg-open http://127.0.0.1:8888/?token=${JUPYTER_TOKEN}


docker run --rm -it -v $NBDIR:/mounted jupyter/base-notebook /bin/bash

docker exec -it tljh-dev /bin/bash


ansible-playbook -i ~/repos/ansible-playbooks/setup_ubuntu2004/hosts.yaml -l n1 --tags addgroup,adduser playbook.yml



