#!/bin/bash

dockerhub_repo=$1
project_name=$2

#  -v ~/.m2:/root/.m2 \ 會裝一堆雜七雜八的
docker run -it --rm --name my-maven-project \
      -v ~/.m2/repository:/root/.m2/repository \
      -v $(pwd):/app \
      -w /app \
      vegardit/graalvm-maven:latest-java17 \
      mvn clean -Pnative native:compile -Dmaven.test.skip=true

docker build . -t $dockerhub_repo/$project_name
#docker push $dockerhub_repo/$project_name

# docker run --rm -p 8080:9999 qoosdd89382/native-graal
