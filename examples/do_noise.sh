#!/bin/bash

BIN="./rnnoise_demo"
FFMPEG="ffmpeg"

ffmpeg -y  -i input.mp4  -acodec pcm_s16le -f s16le -ac 1 -ar 48000 output.pcm
ffmpeg -f s16le -ar 48000 -ac 2 -i "$1.raw" "$1.wav"
