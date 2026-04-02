#!/bin/bash

set -e
 ./JK-Transformer -e 0 -m ./models/save/model_linux_en-ko_huge_21388_40.bin -o en -t ko -v huge
#./JK-Transformer -e 0 -m ./models/save/model_linux_en-ja_huge_21388_40.bin -o en -t ja -v huge
