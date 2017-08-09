echo "Pushing service docker images to docker hub ...."
docker login -u $DOCKER_USERNAME -p $DOCKER_PASSWORD
export REPO=$DOCKER_USERNAME/gs-spring-boot
echo "building docker: docker build -f Dockerfile -t $REPO"
docker build -f Dockerfile -t $REPO .
docker tag $REPO $REPO:$TAG
docker push $REPO
