## 基于特征点的SLAN
### LSD-SLAM
LSD-SLAM: Large-Scale Direct Monocular SLAM
LSD-SLAM is a novel approach to real-time monocular SLAM. It is fully direct (i.e. does not use keypoints / features) and creates large-scale, semi-dense maps in real-time on a laptop. For more information see http://vision.in.tum.de/lsdslam where you can also find the corresponding publications and Youtube videos, as well as some example-input datasets, and the generated output as rosbag or .ply point cloud.
- <https://github.com/tum-vision/lsd_slam>

### SVO

This code implements a semi-direct monocular visual odometry pipeline.

Video: http://youtu.be/2YnIMfw6bJY

Paper: http://rpg.ifi.uzh.ch/docs/ICRA14_Forster.pdf

Disclaimer
SVO has been tested under ROS Groovy, Hydro and Indigo with Ubuntu 12.04, 13.04 and 14.04. This is research code, any fitness for a particular purpose is disclaimed.
- <https://github.com/uzh-rpg/rpg_svo>

### DSO-SLAM
DSO is a novel direct and sparse formulation for Visual Odometry. It combines a fully direct probabilistic model (minimizing a photometric error) with consistent, joint optimization of all model parameters, including geometry - represented as inverse depth in a reference frame - and camera motion. This is achieved in real time by omitting the smoothness prior used in other direct methods and instead sampling pixels evenly throughout the images. DSO does not depend on keypoint detectors or descriptors, thus it can naturally sample pixels from across all image regions that have intensity gradient, including edges or smooth intensity variations on mostly white walls. The proposed model integrates a full photometric calibration, accounting for exposure time, lens vignetting, and non-linear response functions. We thoroughly evaluate our method on three different datasets comprising several hours of video. The experiments show that the presented approach significantly outperforms state-of-the-art direct and indirect methods in a variety of real-world settings, both in terms of tracking accuracy and robustness.
- <https://github.com/JakobEngel/dso>

### ElasticFusion
RGB-D摄像头
- <https://github.com/mp3guy/ElasticFusion>

### ORBSLAM
Real-Time SLAM for Monocular, Stereo and RGB-D Cameras, with Loop Detection and Relocalization Capabilities
单目 双面和RGB-D深度摄像头
- <https://gitee.com/paopaoslam/ORB-SLAM2>
- <https://github.com/raulmur/ORB_SLAM2>
