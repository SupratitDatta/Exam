read -p "Enter the number : " n

cur=1
for ((i = 1 ;i<= n;i++)); do
    for ((j = 0;j< n-i;j++)); do
        echo -n "  "
    done

    for ((j = 0;j< i;j++)); do
        echo -n "$cur "
    done 

    cur=$((cur+1))
    echo 
    check=1;
    for ((j = 0 ; check ;j++)); do
        check=0;
        for ((r=2;r< cur;r++)); do
            if [ $((cur % r)) -eq 0 ]; then
                check=1;
                break;
            fi

        done 
        if [ $check -eq 1 ]; then
            cur=$((cur+1));
        fi

    done 

done
