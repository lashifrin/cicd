echo "starting platform tests..."
URL=http://$CONTAINER_IP:8080
curl $URL
#out=$(curl -s -w "%{http_code}" $URL)
#assert "Greetings from Spring Boot/v2!200" "$out"
#echo
#echo "PASS: $tests_run tests run"
