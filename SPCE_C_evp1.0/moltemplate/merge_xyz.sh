#!/bin/sh

v1=`(awk 'NR==1{nmol=$1}END{print nmol}' $1)`
v2=`(awk 'NR==1{nmol=$1}END{print nmol}' $2)`

echo $(($v1 + $v2))
echo "merged $1 and $2"
tail +3 $1
tail +3 $2

