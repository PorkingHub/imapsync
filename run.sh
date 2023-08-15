#!/bin/bash

docker build -t "imagesync:Dockerfile" .
docker run -i -t imagesync:Dockerfile /bin/bash
