#!/bin/bash

# source config vars
. ./config.sh

echo "Running $service docker image..."
docker rm -f $service

docker run --name wiki --network wikinetwork -p 8080:80 --rm -v ${PWD}/../:/var/www/html/ -v ${PWD}/../LocalSettings.php:/var/www/html/LocalSettings.php -d mediawiki
# docker run --name=$service \
# 	--log-opt max-size=25m \
# 	--log-opt max-file=4 \    
# 	-c 5120 \
# 	-m 2g \
# 	-p 8080:80 \
# 	-v ${PWD}:/var/www/html/ \    
# 	-d $service