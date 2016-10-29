#!/bin/sh
#####
# swift-ffmpeg
#
# A fire-and-forget shell script that encodes 
# multiple video and audio files with ffmpeg.
#
# Github: https://github.com/DonutDeflector/swift-ffmpeg
#####

##############################
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

# Pixel Format (chroma sampling and bit depth)
# (yuv420, yuv420p10le)
# Default: yu42010le
pixelformat=yu420p10le

# Audio Codec
# (ac3, eac3, wmav1, wmav2, libmp3lame, libfdk_aac, aac, libvorbis, vorbis, libopus)
# default: aac
audiocodec=aac

# Audio Bitrate
# (8, 16, 24, 32, 40, 48, 64, 80, 96, 112, 128, 160, 192, 224, 256, or 320)
# default: 256
audiobitrate=256

# Input Format
# (mp4, mkv, avi, etc.) 
# default: mp4
inputformat=mp4

# Output Format
# (mp4 or mkv) 
# default: mkv
outputformat=mkv

#########################

# Core Function
for f in *."$inputformat"; do ffmpeg -i "$f" -c:v "$videocodec" -crf "$ratefactor" -preset "$preset" \
  -c:a "$audiocodec" -b:a "$audiobitrate" -movflags +faststart -vf --pix_fmt "$pixelformat" \
  "completed/${f%."$inputformat"}."$outputformat""; done

