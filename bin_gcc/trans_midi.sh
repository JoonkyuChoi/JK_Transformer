#!/bin/bash

set -e
 ./JK-Transformer -e 0 -m ./models/save/model_linux_en-ko_midi_10770_30.bin -o en -t ko -v midi
#./JK-Transformer -e 0 -m ./models/save/model_linux_en-ja_midi_10770_30.bin -o en -t ja -v midi
