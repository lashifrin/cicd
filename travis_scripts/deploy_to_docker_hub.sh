echo "Pushing service docker images to docker hub ...."
docker login -u $DOCKER_USERNAME -p $DOCKER_PASSWORD
docker push leonid30022/gs-spring-boot:$BUILD_NAME



after_success:
  - CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build main.go
  - docker login -e $DOCKER_EMAIL -u $DOCKER_USER -p $DOCKER_PASS
  - export REPO=sebestblog/travis-demo
  - export TAG=`if [ "$TRAVIS_BRANCH" == "master" ]; then echo "latest"; else echo $TRAVIS_BRANCH ; fi`
  - docker build -f Dockerfile -t $REPO:$COMMIT .
  - docker tag $REPO:$COMMIT $REPO:$TAG
  - docker tag $REPO:$COMMIT $REPO:travis-$TRAVIS_BUILD_NUMBER
  - docker push $REPO
