#!/bin/sh

###########################################################
# swift-encoder                                           #
#                                                         #
# A fire-and-forget shell script that encodes             #
# multiple video files with ffmpeg.                       #
#                                                         #
# Github: https://github.com/DonutDeflector/swift-encoder #
###########################################################

##############################

# Settings

# Video Codec
# (libx264 or libx265)
# default: libx265
videocodec=libx265

# Rate Factor
# (0-51 | Lower Number = Higher Quality) 
# default: 21
ratefactor=21

# Preset
# (ultrafast, superfast, veryfast, fast, medium, slow, slower, veryslow)
# default: medium
preset=medium

# Pixel Format (chroma sampling and bit depth)
# (yuv420p [8bit], yuv420p10le [10bit])
# Default: yu4v2010le
pixelformat=yuv420p10le

# Reference Frames (ref)
# (1-16 | Higher Number = More Reference Frames)
# Default: 8
referenceframes=8

# B-frames (bf)
# (1-16 | Higher Number = More Concecutive B-frames)
# Default: 8
bframes=8

# Weighted Prediction for B-frames
# (0 to disable | 1 to enable)
# Default: 1
weightb=1

# Adaptive B-frame Placement (b_strategy/b-adapt)
# (0-2 | Higher Number = More Effiencent Encoding)
# Default: 2
badapt=2

# rc-lookahead
# (Number of frames to look ahead for frametype and ratecontrol)
# Default: 40
rclookahead=40

# Scenecut
# Default: 45
scenecut=45

# Strength of Psychovisual Optimization
# Default = 2.0
psyrd=2.0

# Audio Codec
# (ac3, eac3, wmav1, wmav2, libmp3lame, libfdk_aac, aac, libvorbis, vorbis, libopus)
# default: libopus
audiocodec=libopus

# Constant/Variable Bitrate
# (b:a for CBR | q:a for VBR)
# Default: b:a
audioencoding=b:a

# Audio Bitrate
# CBR (8k, 16k, 24k, 32k, 40k, 48k, 64k, 80k, 96k, 112k, 128k, 160k, 192k, 224k, 256k, or 320k)
# VBR (0-9 | Lower Number = Higher Quality)
# default: 192k
audiobitrate=192k # Very important to remember the 'k' for CBR

# Audio Channels
# default: 2
audiochannels=2

# Input Format
# (mp4, mkv, avi, etc.) 
# default: mp4
inputformat=mp4

# Output Format
# (mp4, mkv, avi, etc.) 
# default: mkv
outputformat=mkv

# Completed Files Folder
# (Ex: Completed | quality21/completed)
# default: completed
cmpltd_fls_fldr=completed

#########################

# Core Functionality
# (Better off not touching unless you know what you are doing)

if [ "$1" = "anime" ]; then
for f in "$2"/*."$inputformat"; do 
         ffmpeg -i "$f" \
         -c:v "$videocodec" \
         -crf "$ratefactor" \
         -preset "$preset" \
	 -x265-params allow-non-conformance:ref=8:bframes=8:rd=6:me=star:b-adapt=2:qg-size=64:rc-lookahead=40:scenecut=45:weightb=1:psy-rd=2.0 \
         -c:a "$audiocodec" \
         -"$audioencoding" "$audiobitrate" \
         -ac "$audiochannels" \
         -pix_fmt "$pixelformat" \
         "${f%."$inputformat"}[se]."$outputformat""; done
else
for f in "$2"/*."$inputformat"; do 
         ffmpeg -i "$f" \
         -c:v "$videocodec" \
         -crf "$ratefactor" \
         -preset "$preset" \
         -c:a "$audiocodec" \
         -"$audioencoding" "$audiobitrate" \
         -ac "$audiochannels" \
         "${f%."$inputformat"}[se]."$outputformat""; done
fi

# Palace of Immigration
# This is where we move the files
mkdir "$2""$cmpltd_fls_fldr"/ # create folder
mv "$2"*"[se]"."$outputformat" "$2""$cmpltd_fls_fldr"/ # move the completed encodes
