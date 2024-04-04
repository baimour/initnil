#!/bin/bash

clear
set -e
cd "$(dirname "$0")"; cd initnil
dpkg-scanpackages -m ./debs/rootful > ./Packages
bzip2 -fks ./Packages
find ./ -name ".DS_Store" -depth -exec rm {} \;
open /Applications/GitHub*.app

echo -e "\n生成完成！"