#!/bin/bash
file_name=""
for i in $@; do
  file_name+=${i}_
done
file_name="${file_name::-1}"
file_name+=".sh"
echo $file_name
touch "./Jan/$file_name"
