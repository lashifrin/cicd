echo "Pushing service docker images to docker hub ...."
docker login -u $DOCKER_USERNAME -p $DOCKER_PASSWORD
docker push leonid30022/gs-spring-boot:$BUILD_NAME
