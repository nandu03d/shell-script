#!/bin/bash
num=$1
if [$num -gt 10]
then
    echo "given number $num is greater than 10"
else
    echo "given number $num is smaller than 10"
fi