#!/bin/bash
# This is s simple docker run command, broken up so you can read each bit
# -d flag runs in detatched mode
# use -it to start in interactive mode
# --rm removes the container on exit
##
##
#
# Defining timestamp variables.
#
TIME1=$(date +%s)

#sudo docker run -d --rm \
#    -p 28787:8787 \                         # map ports
#    --name hello-world2 \                   # name container
#    -e USERID=$UID \                        # you need to share a UID so you can write to mount file on host
#    -e PASSWORD=SoSecret! \                   # set rstudio password - user is rstudio
#    -v $DATA_DIR:/home/rstudio/Data \       # mount data directory to pick up changes or write to host
#       rstudio/hello-world                  # the name of the image

# simple one liner for command line copying

#Stop existing container named rstudio
docker stop rstudio

#Rebuild the base image of the container named rstudio
docker build --rm --force-rm -t rstudio/rstudio-kitematic .

# Idnentify running volumes
# docker volume ls
# docker volume rm kitematic

DATA_DIR=/mnt/data/black_swan
DATA_TEMP=/mnt/data/opportunities
# changed {$pwd} as I want to to use a specific location.

# Convert rstudio-kitematic to rstudio-risk and remove Kitematic volume.
sudo ./docker-copyedit.py FROM rstudio/rstudio-kitematic INTO rstudio/rstudio-risk -vv REMOVE VOLUME /home/rstudio/kitematic

#Run the Docker Container rstudio/rstudio-risk
docker run -d --rm -p 8787:8787 --name rstudio -e PASSWORD=password -e USERID=$UID -v $DATA_DIR:/home/rstudio/black_swan -v $DATA_TEMP:/home/rstudio/opportunities rstudio/rstudio-risk
# removed sudo from line above as the userid is part of docker group

# this is an example of running the container in interactive mode and logging into a bash shell
# sudo docker run -it --rm  --name hello-world2 -e USERID=$UID -v $DATA_DIR:/home/rstudio/Data rstudio/hello-world  /bin/bash

#remove the kitematic folder
docker exec -d rstudio rm -rf /home/rstudio/kitematic

docker image prune --force
TIME2=$(date -%s)

## Subtracting Start-time and Stop-time proving duration of this scipt in seconds.

runtime=$((TIME2 - TIME1))

echo $runtime seconds
echo docker exec -ti rstudio ps -o etime= -p "1"

# Use https://thinkr-open.github.io/attachment/# to create a better way to manage dependencies.
