# swift-ffmpeg [wip]
A fire-and-forget shell script that encodes multiple video and audio files with ffmpeg.

___

## Table of Contents
1. Function
2. Usage
3. Modification and Redistribution

___

## 1. Function

The purpose of swift-ffmpeg is to simplify and automate the encoding of multiple 
video/audio. Encoding options are easily accessable by editing the variables within the
script.

___

## 2. Usage (For Linux)

#### Obtaining 
  1. [Download the zip](https://github.com/DonutDeflector/swift-ffmpeg/archive/master.zip) or clone the git repo with 'git clone https://github.com/DonutDeflector/swift-ffmpeg.git'
  2. Move **swift-ffmpeg** to a directory of your choice.

#### Operation
This script is very easy to use:
  1. Move the script into the directory that contains the files you wish to encode.
  2. Run the script: `./swift-ffmpeg.sh /files/to/encode /completed/files`
  3. Sit back, relax, and wait for your files to finish encoding.
  
(**NOTE**: **do not** use the same directory for files to be encoded and completed files, this might cause the script to infinitely encode videos until the eventual Heat Death of the Universe. Or until you TERM the session.)
___

## 3. Modification and Redistribution

**From LICENSE.txt:**

```

The MIT License (MIT)

Copyright (c) 2016 Phillip T.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and
associated documentation files (the "Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the
following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial
portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT
LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO
EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR
THE USE OR OTHER DEALINGS IN THE SOFTWARE.

```



