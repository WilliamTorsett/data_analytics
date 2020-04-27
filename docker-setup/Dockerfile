#Dockerfile originally from https://www.symbolix.com.au/blog-main/r-docker-hello
# Base image https://hub.docker.com/u/rocker/
FROM rocker/rstudio

# Install library dependancy

RUN apt-get update -y && apt-get install -y \
    r-base \
    r-base \
    r-base-dev \
    libxml2-dev \
    libxml2 \
    sudo \
    gdebi-core \
    pandoc \
    pandoc-citeproc \
    libcurl4-gnutls-dev \
    libcairo2-dev \
    libxt-dev \
    xtail \
    wget

# From https://www.dabbleofdevops.com/blog/deploy-rshiny-with-the-rocker-shiny-docker-image
# Clone the repository from GitHub
#RUN git clone https://github.com/rstudio/shiny-server.git

# Get into a temporary directory in which we'll build the project
#RUN cd shiny-server
#RUN mkdir -p tmp
#RUN cd tmp

# Install our private copy of Node.js
#RUN ../external/node/install-node.sh

# Add the bin directory to the path so we can reference node
#ENV DIR=`pwd`
#ENV PATH=$DIR/../bin:$PATH

# Use cmake to prepare the make step. Modify the "--DCMAKE_INSTALL_PREFIX"
# if you wish the install the software at a different location.
#RUN cmake -DCMAKE_INSTALL_PREFIX=/usr/local ../
# Get an error here? Check the "How do I set the cmake Python version?" question below

# Recompile the npm modules included in the project
#RUN make
#RUN mkdir ../build && (cd .. && ./bin/npm install) && (cd .. && ./bin/node ./ext/node/lib/node_modules/npm/node_modules/node-gyp/bin/node-gyp.js rebuild)

# Install the software at the predefined location
#RUN sudo make install

# Install default config file
#RUN sudo cp ../config/default.config /etc/shiny-server/shiny-server.conf

## Install extra R packages using requirements.R
## Specify requirements as R install commands e.g.
## 
## install.packages("<myfavouritepacakge>") or
## devtools::install("SymbolixAU/googleway")

## Copy requirements.R to container directory /tmp
COPY ./DockerConfig/requirements.R /tmp/requirements.R 
## install required libs on container
RUN Rscript /tmp/requirements.R

# create an R user
ENV USER rstudio
#RUN find /home/$USER/kitematic -delete

## Add folder to RSTUDIO
## RUN mkdir -p /home/$USER/Data

## Copy your working files over
## The $USER defaults to `rstudio` but you can change this at runtime
# COPY ./Analysis /home/$USER/Analysis

##
#
# When usisng COPY or ADD you can only add folders from the same working directory (ie .)
# or lower from the script or command run.
#
##
RUN mkdir -p /home/$USER/black_swan
COPY . /home/$USER/black_swan







