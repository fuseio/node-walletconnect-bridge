#!/usr/bin/env bash

# Build Docker images
for file in .codebuild/*.Dockerfile; do
  tag=$(basename -- "$file" ".Dockerfile")
  docker build -t $tag -f $file .
done
