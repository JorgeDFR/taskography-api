FROM ubuntu:20.04

# ---------------------------
# Set environment variables
# ---------------------------
ENV DEBIAN_FRONTEND=noninteractive
ENV USER=user
ENV HOME=/home/${USER}

# ---------------------------
# Install additional packages
# ---------------------------
RUN apt-get update && apt-get install -y \
      sudo curl wget git nano \
      bash-completion software-properties-common \
      python3-pip python-is-python3 \
      cmake flex bison \
      docker.io \
    && rm -rf /var/lib/apt/lists/*

# ---------------------------
# Taskography-API
# ---------------------------
RUN mkdir -p ${HOME}/workspace
# RUN git clone https://github.com/JorgeDFR/taskography-api.git \
#     --branch=jorge_devel \
#     --recurse-submodules \
#     ${HOME}/workspace/taskography-api

# RUN cd ${HOME}/workspace/taskography-api && \
#     pip install . && \
#     pip install -r requirements.txt

# ---------------------------
# Switch user and set workdir
# ---------------------------
WORKDIR ${HOME}/workspace
CMD ["/bin/bash"]
