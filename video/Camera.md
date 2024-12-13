## libuvc
libuvc is a library that supports enumeration, control and streaming for USB Video Class (UVC) devices, such as consumer webcams.

Features
UVC device discovery and management API
Video streaming (device to host) with asynchronous/callback and synchronous/polling modes
Read/write access to standard device settings
Conversion between various formats: RGB, YUV, JPEG, etc.
Tested on Mac and Linux, portable to Windows and some BSDs
- api page <https://ken.tossell.net/libuvc/doc/>

## libuvc_ros
ROS Driver for USB Video Class Cameras
libuvc_camera is a ROS driver that supports webcams and other UVC-standards-compliant video devices. It's a cross-platform replacement for uvc_camera, a Linux-only webcam driver.

Documentation is available on the ROS wiki: libuvc_camera.
- <http://wiki.ros.org/libuvc_ros>
- github <https://github.com/ros-drivers/libuvc_ros>

## uvc
The goal of this project is to provide all necessary software components to fully support UVC compliant devices in Linux. This include a V4L2 kernel device driver and patches for user-space tools.

The USB Device Class Definition for Video Devices, or USB Video Class, defines video streaming functionality on the Universal Serial Bus. Much like nearly all mass storage devices (USB flash disks, external SATA disk enclosures, ...) can be managed by a single driver because they conform to the USB Mass Storage specification, UVC compliant peripherals only need a generic driver.
- home page <http://www.ideasonboard.org/uvc/>

## read camera image to android phone
- https://github.com/geekxingyun/android-otg-usb-mtp-ptp-solution
