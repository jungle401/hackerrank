#!/bin/bash
# declare -a arr
for i in {1..3}; do
read arr[$i]
done
sarr=($(printf "%s\n" "${arr[@]}" | sort -n))
# echo "${sarr[@]}"
if [ "${sarr[0]}" -eq "${sarr[2]}" ]; then
echo "EQUILATERAL"
elif [ "${sarr[0]}" -eq "${sarr[1]}" ] || [ "${sarr[1]}" -eq "${sarr[2]}" ]; then
echo "ISOSCELES"
else
echo "SCALENE"
fi
