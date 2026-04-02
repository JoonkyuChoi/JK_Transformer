#!/bin/bash

set -e
 ./JK-Transformer -e 0 -m ./models/save/model_linux_en-ko_tiny_2439_10.bin -o en -t ko -v tiny
#./JK-Transformer -e 0 -m ./models/save/model_linux_en-ja_tiny_2439_10.bin -o en -t ja -v tiny
