echo "Pushing service docker images to docker hub ...."
docker login -u $DOCKER_USERNAME -p $DOCKER_PASSWORD
export REPO=$DOCKER_USERNAME/gs-spring-boot
#export TAG=`if [ "$TRAVIS_BRANCH" == "master" ]; then echo "latest"; else echo $TRAVIS_BRANCH ; fi`
#docker build -f Dockerfile -t $REPO:$COMMIT .
docker build -f Dockerfile -t $REPO
#docker tag $REPO:$COMMIT $REPO:$TAG
docker tag $REPO $REPO:$TAG
docker push $REPO
