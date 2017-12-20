FROM ubuntu

LABEL author="Sascha Saralajew" \
      release-date="2017-12-15" \
      version="v0.2"

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
    python3-tk \
    git

# download RoBO docker branch
RUN git clone -b docker https://github.com/saralajew/RoBO.git /home/RoBO/

# install RoBO
RUN pip3 install --upgrade pip \
 && pip3 install ipython \
 && for req in $(cat /home/RoBO/all_requirements.txt); do pip3 install $req; done

WORKDIR /home/RoBO
RUN python3 setup.py install

# overwrite brocken packages
RUN /bin/bash -c "cp -r /home/RoBO/docker/misc/cma /usr/local/lib/python3.5/dist-packages/cma/"
RUN /bin/bash -c "cp -r /home/RoBO/docker/misc/DIRECT /usr/local/lib/python3.5/dist-packages/DIRECT/"

# generate alias
RUN echo 'alias python=python3' >> ~/.bashrc
RUN echo 'alias pip=pip3' >> ~/.bashrc
RUN echo 'alias pydoc=pydoc3' >> ~/.bashrc

# set startup dict
WORKDIR /home/
