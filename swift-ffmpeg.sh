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
# default: libx265
videocodec=libx265

# Rate Factor
# (From 0-51 | Lower Number = Higher Quality) 
# default: 21
ratefactor=21

# Preset
# (ultrafast, superfast, veryfast, fast, medium, slow, slower, veryslow)
# default: medium
preset=medium

# Audio Codec
# (ac3, eac3, wmav1, wmav2, libmp3lame, libfdk_aac, aac, libvorbis, vorbis, libopus)
# default: aac
audiocodec=aac

# Input Format
# (mp4, mkv, avi, etc.) 
# default: mp4
inputformat=mp4

# Output Format
# (mp4 or mkv) 
# default: mkv
outputformat=mkv

##########################

# Core Function
for f in *."$inputformat"; do ffmpeg -i "$f" -c:v "$videocodec" -crf "$ratefactor" -preset "$preset" \
  -c:a "$audiocodec" -vbr 4 -movflags +faststart -vf scale=-2:720,format=yuv420p \
  "completed/${f%."$inputformat"}."$outputformat""; done

