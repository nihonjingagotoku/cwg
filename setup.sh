#!/usr/bin/env bash

# rm -rf cedict makemeahanzi frontend/tagmanager
#
git clone --depth 1 https://github.com/skishore/makemeahanzi.git makemeahanzi

mkdir cedict
curl https://www.mdbg.net/chinese/export/cedict/cedict_1_0_ts_utf-8_mdbg.txt.gz | gunzip > cedict/data

mkdir frontend/tagmanager
curl https://raw.githubusercontent.com/max-favilli/tagmanager/v3.0.2/tagmanager.js > frontend/tagmanager/tagmanager.js
curl https://raw.githubusercontent.com/max-favilli/tagmanager/v3.0.2/tagmanager.css > frontend/tagmanager/tagmanager.css

curl https://github.com/be5invis/source-han-sans-ttf/releases/download/v2.001.1/source-han-sans-ttf-2.001.1.7z -L > SourceHanSansTtf.7z

7za e SourceHanSansTtf.7z SourceHanSansTC-Normal.ttf
# rm SourceHanSansTtf.7z

# For Turkish font support
wget https://github.com/adobe-fonts/source-sans/raw/refs/heads/release/TTF/SourceSans3-Regular.ttf
