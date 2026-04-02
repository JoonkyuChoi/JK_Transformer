#!/bin/bash

set -e
 ./JK-Transformer -e 0 -m ./models/save/model_linux_en-ko_min1_3598_30.bin -o en -t ko -v min1
#./JK-Transformer -e 0 -m ./models/save/model_linux_en-ja_min1_3598_30.bin -o en -t ja -v min1
