echo "Launching $BUILD_NAME IN AMAZON ECS"
ecs-cli configure --region us-east-1 --access-key $AWS_ACCESS_KEY --secret-key $AWS_SECRET_KEY --cluster  cicd-demo
ecs-cli compose --file docker-compose.yml up
rm -rf ~/.ecs
