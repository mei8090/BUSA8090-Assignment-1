#!/bin/bash

newest_file=""
newest_inode=0

for file in "$@"; do
   inode=$(ls -i "$file" | awk '{print $1}')
 if [ $inode -gt $newest_inode ]; then
   newest_inode=$inode
   newest_file=$file
 fi
done

echo "$newest_file"













