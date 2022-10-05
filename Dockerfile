FROM continuumio/miniconda3:4.10.3p1

WORKDIR /app

RUN conda install \
    xarray \
    netCDF4 \
    bottleneck \
    numpy \
    pandas \
    matplotlib \
    jupyterlab \
    scikit-learn \
    seaborn  

COPY . /app/

CMD ["jupyter-lab","--ip=0.0.0.0","--no-browser","--allow-root"]
