#!/bin/bash

BIN="./rnnoise_demo"
FFMPEG="ffmpeg"

ffmpeg -y  -i "$1.mp4"  -acodec pcm_s16le -f s16le -ac 1 -ar 48000 "$1.pcm"
$BIN "$1.pcm" "$1.raw"
ffmpeg -f s16le -ar 48000 -ac 1 -i "$1.raw" "$1.wav"
