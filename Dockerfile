FROM continuumio/miniconda3

RUN conda install --yes -c conda-forge pynio pyngl tbb netcdf4 xarray xesmf scipy jupyterlab

EXPOSE 8888

WORKDIR /jupyter/

CMD jupyter-lab --no-browser --allow-root --ip=*
