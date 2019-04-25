FROM nvidia/cuda:10.0-cudnn7-devel-ubuntu18.04
LABEL maintainer="Satoshi Iwazaki <s.iwazaki@gmail.com>"

ENV LANG C.UTF-8
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update &&\
    apt-get install -y software-properties-common \
    build-essential \
    git \
    wget \
    vim \
    curl \
    zip \
    zlib1g-dev \
    unzip \
    pkg-config \
    libblas-dev \
    liblapack-dev \
    python-dev \
    python3-dev \
    python3-pip \
    python3-tk \
    python3-wheel \
    graphviz \
    libhdf5-dev \
    swig && \
    ln -s /usr/bin/python3 /usr/local/bin/python && \
    ln -s /usr/bin/pip3 /usr/local/bin/pip && \
    pip install --upgrade pip && \
    apt-get clean && \
    # best practice to keep the Docker image lean
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Install essential Python packages
RUN pip3 --no-cache-dir install \
  pytest \
  numpy \
  matplotlib \
  scipy \
  pandas \
  jupyter \
  scikit-learn \
  seaborn \
  graphviz \
  gpustat \
  tensorflow-gpu \
  keras \
  h5py \
  jupyterlab

WORKDIR /notebooks