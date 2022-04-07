#!/bin/bash

echo "project management in github" 


arr[0]=$(<num1.txt)
arr[1]=$(<num2.txt)

PS3='select menu : '
select menu in "add" "sub" "div" "mul"
do
    if [[ "$menu" = "add" ]]; then
        echo -e "\nnum1 : ${arr[0]}"; echo "num2 : ${arr[1]}"; echo "op : $menu"
        let result=${arr[0]}+${arr[1]}; echo "result : $result"; exit 1
    elif [[ "$menu" = "sub" ]]; then
        echo -e "\nnum1 : ${arr[0]}"; echo "num2 : ${arr[1]}"; echo "op : $menu"
        let result=${arr[0]}-${arr[1]}; echo "result : $result"; exit 1
    elif [[ "$menu" = "div" ]]; then
        echo -e "\nnum1 : ${arr[0]}"; echo "num2 : ${arr[1]}"; echo "op : $menu"
        let result=${arr[0]}/${arr[1]}; echo "result : $result"; exit 1
    elif [[ "$menu" = "mul" ]]; then
        echo -e "\nnum1 : ${arr[0]}"; echo "num2 : ${arr[1]}"; echo "op : $menu"
        let result=${arr[0]}*${arr[1]}; echo "result : $result"; exit 1
    fi
done
