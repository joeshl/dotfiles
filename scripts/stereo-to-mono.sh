#!/bin/bash

ffmpeg -i $1 -map_channel 0.0.0 $1-left.wav -map_channel 0.0.1 $1-right.wav