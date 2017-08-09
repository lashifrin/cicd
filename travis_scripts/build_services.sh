echo "Building with travis commit of $BUILD_NAME ..."
#  - export REPO=$DOCKER_USERNAME/gs-spring-boot
#  - export TAG=`if [ "$TRAVIS_BRANCH" == "master" ]; then echo "latest"; else echo $TRAVIS_BRANCH ; fi`
#  - docker build -f Dockerfile -t $REPO:$COMMIT .
#  - docker tag $REPO:$COMMIT $REPO:$TAG
#  - docker tag $REPO:$COMMIT $REPO:travis-$TRAVIS_BUILD_NUMBER
#  - docker push $REPO
mvn clean package docker:build
