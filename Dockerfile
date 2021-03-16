FROM jupyter/scipy-notebook

USER root

RUN apt-get update && \
    apt-get install -y csh libfreetype6-dev pkg-config libx11-dev && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

USER $NB_USER

ENV DISPLAY=host.docker.internal:0

RUN conda install --yes -c conda-forge ncl pynio pyngl