#!/bin/bash

./100-run-instagram
sleep 15
./301-search-people
sleep 5
./302-search-bar
sleep 5
./303-last-account
sleep 5
./304-account-detail
sleep 5

move=0
while [ 1 ]; do
    ./305-follow
    if [[ $? -eq 1 ]]; then
        if [[ $move -eq 1 ]]; then
            ./004-close-instagram
            exit 1
        fi
        ./306-move-follows
        move=1
    fi
    sleep 2
done
