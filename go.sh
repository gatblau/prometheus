#!/usr/bin/env bash

# Deploys a given configuration
#
# To use it just execute go.sh passing the name of the configuration as follows:
#   sh go.sh configuration_name
#      where configuration_name: the name of the configuration to deploy

CACHE_FOLDER='/var/cache/prometheus/'
echo "The folder used to cache installation packages in the control node is "$CACHE_FOLDER

BUILD_CACHE_FILE=cfg/$1/build-cache.sh
echo "The path to the file used to build a cache of installation packages for the "$1" configuration is "$BUILD_CACHE_FILE

export ANSIBLE_ROLES_PATH="./roles:$PWD/roles"
echo "The path used by Ansible to find roles is "$ANSIBLE_ROLES_PATH

# creates the cache folder if it does not exist
if [[ ! -e $CACHE_FOLDER ]]; then
    echo "Creating the "$CACHE_FOLDER" folder"
    sudo mkdir -p $CACHE_FOLDER
    sudo chmod 0777 $CACHE_FOLDER
fi

# if it finds a shell script to build the cache, calls it
if [[ -f $BUILD_CACHE_FILE ]]; then
    echo "Building local cache of installation packages"
    source $BUILD_CACHE_FILE
else
    echo "Cache file not found, will not attempt to build a local cache"
fi

# records the time at the beginning of the execution
startTime=$(date -u +"%s")

# starts the deployment of a configuration
ansible-playbook -i cfg/$1/inventory cfg/$1/site.yml

# records the time at the end of the execution
endTime=$(date -u +"%s")

# calculates the total execution time
diff=$(($endTime-$startTime))

echo $os "Execution completed in $(($diff / 60)) minutes and $(($diff % 60)) seconds."
