# swift-encoder
A fire-and-forget shell script that encodes multiple video files with ffmpeg.

___

## Table of Contents
1. Function
2. Usage
3. Modification and Redistribution

___

## 1. Function

The purpose of swift-ffmpeg is to simplify and automate the encoding of multiple
video files. Once executed by the user, the script will automatically batch
encode video files in a given folder. Encoding options are easily accessable by
editing the variables within `swift-encoder.sh`.

___

## 2. Usage (For Linux)

#### Package Requirements:
  1. ffmpeg
  2. git (optional)

#### Obtaining
  1. [Download the zip](https://github.com/DonutDeflector/swift-encoder/archive/master.zip)
  or clone the git repo with `git clone https://github.com/DonutDeflector/swift-encoder.git`
  2. Move **swift-encoder.sh** to a directory of your choice. I recommend your
  home folder.
  3. Give the script execute permissions: `chmod +x /path/to/swift-encoder.sh`

#### Operation
This script is very easy to use:
  1. Change the encoding options as you see fit in the **swift-encoder.sh** file.
  2. Run the script: `sh swift-encoder.sh optimization /path/to/source/files`

      - example: `sh swift-encoder.sh anime /home/donut/Videos/NGE`
      - example: `sh swift-encoder.sh normal /home/donut/Videos/Sports\ Cam`
      
  **Note:** The script will default to `normal` if the optimization is misspelled.
      
  3. Sit back, relax, and wait for your files to finish encoding. Once the
  script is finshed running, the files will be moved into a folder called
  `completed` with `[se]` appended to them.

___

## 3. Modification and Redistribution

**From LICENSE.txt:**

```

The MIT License (MIT)

Copyright (c) 2016 Phillip T.

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.


```
