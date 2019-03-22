#!/bin/bash

# Paths
web_hotswap_path="MY_PATH_TO_WebHotswapAgent.jar"
server_webroot="MY_PATH_TO_glassfish3/glassfish/domains/domain1/eclipseApps/"

# Getting project name from Eclipse ${project_loc} variable
IFS='/' read -ra ADDR <<< "$1"
for i in "${ADDR[@]}"; do
    project_name="$i"
done

# Starting
echo "Starting WebHotswapAgent..."
java -jar $web_hotswap_path $1 $server_webroot$project_name
