#!/bin/bash

set -e
 ./JK-Transformer -e 0 -m ./models/save/model_linux_en-ko_big2_10770_20.bin -o en -t ko -v big2
#./JK-Transformer -e 0 -m ./models/save/model_linux_en-ja_big2_10770_20.bin -o en -t ja -v big2
