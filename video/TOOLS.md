## YUV Playyer
YUV Player Deluxe is a full-featured tool for playback of uncompressed planar YUV video files. It is intended for researchers in the area of video compression, developers of video codecs and video chips and for all specialists involved in video processing.

A number of unique features and a thoroughly designed interface make this program the helpful tool necessary when the playback of uncompressed YUV video files files is required.

- yuvplayer <http://www.yuvplayer.com/>

## vooya
vooya is a YUV player, RGB player and a generic raw data player – video data that is uncompressed and containerless, most commonly used in scientific environments. Besides, vooya plays DPX/CINEON, TIFF, OpenEXR and Radiance (HDR) image sequences.

vooya is available for Windows, Mac OS X and Linux, and has a variety of features which makes working with raw data easier:
- vooya <http://www.offminor.de/>

## MP4Box
The multimedia packager available in GPAC is called MP4Box.
It can be used for performing many manipulations on multimedia files like AVI, MPG, TS, but mostly on ISO media files (e.g. MP4, 3GP). A complete documentation is available here.
In short, MP4Box can be used:
for manipulating ISO files like MP4, 3GP: adding, removing, multiplexing audio, video and presentation data (including subtitles) from different sources and in different formats,
for encoding/decoding presentation languages like MPEG-4 XMT or W3C SVG into/from binary formats like MPEG-4 BIFS or LASeR,
for performing encryption of streams
for attaching metadata to individual streams or to the whole ISO file to produce MPEG-21 compliant or hybrid MPEG-4/MPEG-21 files
for preparation of HTTP Adaptive Streaming content,
and packaging and tagging the result for streaming, download and playback on different devices (e.g. phones, tablets) or for different software (e.g. iTunes).
It is widely used: by the video community, by many cloud infrastructures for preparation of multimedia files for playback, especially for iTunes/iOS and PlayStation, and by academics.
- MP4Box <https://gpac.wp.imt.fr/mp4box/>

## MediaInfo
MediaInfo is a convenient unified display of the most relevant technical and tag data for video and audio files.
### install on Mac OS
```bash
brew install mediainfo
```
- mediainfo <https://mediaarea.net/en/MediaInfo>
### demo show
```bash
Documents mediainfo demo.mov
General
Complete name                            : demo.mov
Format                                   : MPEG-4
Format profile                           : QuickTime
Codec ID                                 : qt   0000.00 (qt  )
File size                                : 29.7 MiB
Duration                                 : 51 s 83 ms
Overall bit rate mode                    : Variable
Overall bit rate                         : 4 873 kb/s
Encoded date                             : UTC 2018-06-15 02:30:48
Tagged date                              : UTC 2018-06-15 02:30:48
Writing library                          : Apple QuickTime
com.apple.quicktime.make                 : Apple
com.apple.quicktime.model                : MacBookPro13,2
com.apple.quicktime.software             : Mac OS X 10.12.6 (16G1212)
com.apple.quicktime.creationdate         : 2018-06-15T10:29:02+0800

Video
ID                                       : 1
Format                                   : AVC
Format/Info                              : Advanced Video Codec
Format profile                           : Main@L4
Format settings                          : CABAC / 2 Ref Frames
Format settings, CABAC                   : Yes
Format settings, ReFrames                : 2 frames
Format settings, GOP                     : M=2, N=60
Codec ID                                 : avc1
Codec ID/Info                            : Advanced Video Coding
Duration                                 : 51 s 83 ms
Bit rate mode                            : Variable
Bit rate                                 : 4 867 kb/s
Maximum bit rate                         : 768 kb/s
Width                                    : 1 256 pixels
Height                                   : 732 pixels
Display aspect ratio                     : 1.716
Frame rate mode                          : Constant
Frame rate                               : 60.000 FPS
Original frame rate                      : 25.000 FPS
Color space                              : YUV
Chroma subsampling                       : 4:2:0
Bit depth                                : 8 bits
Scan type                                : Progressive
Bits/(Pixel*Frame)                       : 0.088
Stream size                              : 29.6 MiB (100%)
Title                                    : Core Media Video
Encoded date                             : UTC 2018-06-15 02:30:48
Tagged date                              : UTC 2018-06-15 02:30:48
Color range                              : Limited
Color primaries                          : BT.709
Transfer characteristics                 : BT.709
Matrix coefficients                      : BT.709
Codec configuration box                  : avcC
```
