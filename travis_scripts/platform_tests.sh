echo "starting platform tests against $CONTAINER_IP"
#URL=http://$CONTAINER_IP:8080
sleep 10
curl http://$CONTAINER_IP:8080/demo
#out=$(curl -s -w "%{http_code}" $URL)
#assert "Greetings from Spring Boot/v2!200" "$out"
#echo
#echo "PASS: $tests_run tests run"
