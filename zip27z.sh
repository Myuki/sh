#!/usr/bin/env bash

# Dependencies: unar, p7zip

compressionLevel=9
solid="off"
thred=11

IFS=$'\n'

zipList=$(ls -1 *.zip)

for fileName in $zipList; do
  unar "$fileName"
  dirName="${fileName%".zip"}"
  7zr a "./output/${dirName}.7z" "$dirName" -mmt=$thred -mx=$compressionLevel -ms=$solid
  rm -r "$dirName"
done

echo
echo "Convertion completed."
echo
