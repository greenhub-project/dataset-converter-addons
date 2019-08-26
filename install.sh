#!/usr/bin/env sh

echo "Installing addons..."
mkdir .tmp && cd .tmp
curl -sSOL https://github.com/greenhub-project/dataset-converter-addons/archive/master.zip
unzip -oqj master.zip "dataset-converter-addons-master/data/*" -d "$(dirname $PWD)/data"
unzip -oqj master.zip "dataset-converter-addons-master/plugins/*" -d "$(dirname $PWD)/plugins"
cd .. && rm -rf .tmp
echo "Done!"
