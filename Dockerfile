FROM r-base:3.6.2

RUN mkdir -p root/myshinyapp

RUN apt-get update && apt-get install -y \
    libpq-dev \
    sudo \
    pandoc \
    pandoc-citeproc \
    libcurl4-gnutls-dev \
    libcairo2-dev \
    libxt-dev \
    libssl-dev \
    libssh2-1-dev \
    libxml2-dev \
    libpng-dev \
    xtail \
    wget

COPY . /root/myshinyapp
WORKDIR /root/myshinyapp

RUN R -e "install.packages('renv')"
RUN R -e "library('renv')"
RUN R -e "renv::consent(provided=TRUE)"
RUN R -e "renv::restore(confirm=FALSE)"

EXPOSE 3838

CMD ["R", "-e", "shiny::runApp(host='0.0.0.0', port=3838)"]
