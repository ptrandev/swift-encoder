#!/bin/sh
#####
# swift-ffmpeg
#
# A fire-and-forget shell script that encodes 
# multiple video and audio files with ffmpeg.
#
# Github: https://github.com/DonutDeflector/swift-ffmpeg
#####

# Settings

# Video Codec
# (libx264 or libx265)
# Default: libx265
videocodec=libx265

# Rate Factor
# (From 0-51 | Lower Number = Higher Quality) 
# Default: 21
ratefactor=21

# Preset
# (ultrafast, superfast, veryfast, fast, medium, slow, slower, veryslow)
# Default: medium
preset=medium

# Input Format
# (mp4, mkv, avi, etc.) 
# Default: mp4
inputformat=mp4

# Output Format
# (mp4 or mkv) 
# Default: mkv
outputformat=mkv




# Legit FFmpeg
for f in *.$inputformat; do ffmpeg -i "$f" -c:v $videocodec -crf $ratefactor -preset $preset \
  -c:a libfdk_aac -vbr 4 -movflags +faststart -vf scale=-2:720,format=yuv420p \
  "completed/${f%."$inputformat"}."$outputformat""; done

