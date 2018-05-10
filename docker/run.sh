#!/bin/bash
    # -v ${PWD}/../LocalSettings.php:/var/www/html/LocalSettings.php \

# source config vars
. ./config.sh

echo "Running $service docker image..."
docker rm -f $service
docker run --name="$service" \
    --log-opt max-size=25m \
    --log-opt max-file=4 \
    -c 5120 \
    -m 2g \
	-v ${PWD}/../:/var/www/html \
    --network wikinetwork \
    -p 8080:80 \
	-d $service