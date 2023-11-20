#!/bin/bash

read -p "Enter the number: " n

cur=1
for ((i = 1; i <= n; i++)); do
    for ((j = 1; j <= n; j++)); do
        if [ $j -le $((n - i)) ]; then
            echo -n "  "
        else
            echo -n "$cur "
        fi
    done

    echo 
    cur=$((cur + 1))

    check=1
    while [ $check -eq 1 ]; do
        check=0
        for ((r = 2; r < cur; r++)); do
            if [ $((cur % r)) -eq 0 ]; then
                check=1
                break
            fi
        done

        if [ $check -eq 1 ]; then
            cur=$((cur + 1))
        fi
    done
done
