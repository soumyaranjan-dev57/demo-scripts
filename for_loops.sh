#!/bin/bash

<<info
loops: anything you want to repeat again and again
on the basis of condition

For loop:
start point = 1
end point = 10
increment/decrement = +/-
info

for (( num=1 ; num<=10 ; num++ ))
do
    echo "$num"
    echo "hello"
done
