FROM caret_base
RUN apt-get update -qq && apt-get install -y \
      libssl-dev \
      libcurl4-gnutls-dev
MAINTAINER Gary Hutson, https://hutsons-hacks.info/
#RUN R -e "install.packages('plumber', dependencies=TRUE)"
#RUN R -e "install.packages('readr', dependencies=TRUE)"
#RUN R -e "install.packages('yaml', dependencies=TRUE)"
#RUN R -e "install.packages('caret', dependencies=TRUE)"
#RUN R -e "install.packages('ipred', dependencies=TRUE)"
#RUN R -e "install.packages('swagger', dependencies=TRUE)"
#RUN R -e "install.packages('rapidoc', dependencies=TRUE)"


## AÑADIMOS ESTA OPCIÓN PARA QUE MEDIANTE EL -V NOS GUARDE ESOS VOLÚMENES EN EL LOCAL FOLDER QUE INDIQUEMOS

#RUN mkdir -p /install_packages

### COPIAMOS AL DIRECTORIO ASOCIADO
#COPY /ip/install_packages.R /install_packages/install_packages.R

## LANZAMOS EL SCRIPT DE R
#RUN Rscript /install_packages/install_packages.R

COPY / /
EXPOSE 80
ENTRYPOINT ["Rscript", "PlumbStranded.R"]