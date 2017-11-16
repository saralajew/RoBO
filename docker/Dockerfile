# ---------- installation ---------
#
# 1. copy the folder /misc and /Dockerfile into a temporary folder /<tmp>/
# 2. copy all the RoBO (git repo) files and folders into a folder /<tmp>/RoBO/ (you can exclude the docker folder)
# 3. now the structurer of the folder should look like:  /<tmp>/misc
#							 /<tmp>/Dockerfile
#							 /<tmp>/RoBO
# 4. go into the folder /<tmp>/ and start a bash in that folder
# 5. run inside a bash: 'sudo docker build .' (including the nosetests this will cover some time)

FROM ubuntu

LABEL author="Sascha Saralajew" \
      release-date="2017-11-15" \
      version="v0.1"

# copy modified RoBO version and misc
COPY RoBO /home/RoBO/
COPY misc /home/misc/

# install basic packages and RoBO dependencies
RUN apt-get update && apt-get install -y --no-install-recommends apt-utils \
 && apt-get install -y gfortran \
    git \
    libeigen3-dev \
    nano \
    python3 \
    python3-pip \
    swig \
    wget \
 && /bin/bash -c "alias python=python3 pip=pip3" \
 && /bin/bash -c "source ~/.bashrc" \
 && pip3 install --upgrade pip \
 && for req in $(cat /home/RoBO/all_requirements.txt); do pip3 install $req; done

# install RoBo
RUN /bin/bash -c "cd /home/RoBO/; python3 setup.py install"

# copy modified python packages of cma and DIRECT
RUN /bin/bash -c "cp -rf /home/misc/cma usr/local/lib/python3.5/dist-packages/; \
                  cp -rf /home/misc/DIRECT usr/local/lib/python3.5/dist-packages/"

# verify installation by nosetests call
RUN /bin/bash -c "cd /home/misc/; source ./verify.sh"
