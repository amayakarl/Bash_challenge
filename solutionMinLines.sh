#!/bin/bash

# create the starter folder and change working directory to the starter folder
mkdir starter
cd starter
# cheat using awk :P
# replace create-* and delete-* with their bash counterparts then pipe the output to bash to run it
$(awk '{gsub(/create-directory/, "mkdir");gsub(/create-file/, "touch");gsub(/delete-directory/, "rm -Rf");gsub(/delete-file/, "rm");}1' ../hier.txt | bash)
