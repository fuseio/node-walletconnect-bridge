#!/usr/bin/env bash

# Get reposotory URI from argument
repository=$1

# Push Docker images to the repository
now=$(date +%Y-%m-%d--%H-%M-%S)
for image in walletconnect_nginx walletconnect_bridge; do
  docker tag $image:latest $repository/$image:latest
  docker push $repository/$image:latest
  docker tag $image:latest $repository/$image:$now
  docker push $repository/$image:$now
done
