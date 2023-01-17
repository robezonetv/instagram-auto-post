#!/bin/bash

function run_wait() {
    RC=1
    until [[ $RC -eq 0 ]]; do
        ./$1
        RC=$?
        sleep 1
    done
}

./100-run-instagram
run_wait "101-new-post"
run_wait "202-new-story"
run_wait "203-new-story"
run_wait "204-new-story"
sleep 120
./004-close-instagram 
