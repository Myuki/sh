# sh

A personal shell scripts collection. All scripts only develop for Debian.

## 7zAll.sh

Compress each folder as an individual 7z file.

Parameter:`[<7z switches>...]`

Example: `7zAll.sh -mx=0 -ms=off -mmt=11`

Dependencies: `p7zip`

## purge.sh

Purge package by use `apt` and `dpkg`.

Parameter: `[package...]`

Example: `purge.sh package0 package1`

## upgrade.sh

Update packages index and upgrade packages. It also runs `apt-get autoremove -y` and `apt-get clean` at last.

Parameter: `[<apt-get dist-upgrade options>...]`

Example: `upgrade.sh -y`

## zip27z.sh

Decompress all zip files and recompress as 7z files.

Parameter: `[<7z switches>...]`

Example: `zip27z.sh -mx=0 -ms=off -mmt=11`

Dependencies: `unar, p7zip`
