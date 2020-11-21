#!/usr/bin/env bash

# Dependencies: p7zip

compressionLevel=9
solid="off"
thred=11

IFS=$'\n'

dirList=$(ls -F | grep "/$")

for dirName in $dirList; do
  dirName="${dirName%/}"
  7zr a "./$dirName.7z" "$dirName" -mmt=$thred -mx=$compressionLevel -ms=$solid
done

echo
echo "Compression completed."
echo
