#!/usr/bin/env sh

echo "Installing addons..."
mkdir -p .tmp && cd .tmp
curl -sSOL https://github.com/greenhub-project/dataset-converter-addons/archive/master.zip
unzip -oqj master.zip "dataset-converter-addons-master/config/*" -d "$(dirname $PWD)/config"
unzip -oqj master.zip "dataset-converter-addons-master/plugins/*" -d "$(dirname $PWD)/plugins"
cd .. && rm -rf .tmp
echo "Done!"
