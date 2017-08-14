#!/bin/bash
typeset -i tests_run=0
function try { this="$1"; }
function assert {
    let tests_run+=1
    [ "$1" = "$2" ] && { echo -n "."; return; }
    printf "\nFAIL: $this\n'$1' != '$2'\n"; exit 1
}
URL=http://$CONTAINER_IP:8080
out=$(curl -s -w "%{http_code}" $URL)
assert "Greetings from Spring Boot/v2!200" "$out"
echo
echo "PASS: $tests_run tests run"
