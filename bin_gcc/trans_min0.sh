#!/bin/bash

set -e
 ./JK-Transformer -e 0 -m ./models/save/model_linux_en-ko_min0_3598_40.bin -o en -t ko -v min0
#./JK-Transformer -e 0 -m ./models/save/model_linux_en-ja_min0_3598_40.bin -o en -t ja -v min0
