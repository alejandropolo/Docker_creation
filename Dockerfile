FROM rocker/r-ver:4.0.2
RUN apt-get update -qq && apt-get install -y \
      libssl-dev \
      libcurl4-gnutls-dev


### CREAMOS EL DIRECTORIO

RUN mkdir -p /install_packages

## COPIAMOS LOS DATOS

COPY install_packages.R /install_packages/install_packages.R

### EJECUTAMOS EL SCRIPT

RUN Rscript /install_packages/install_packages.R