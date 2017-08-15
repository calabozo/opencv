# OpenCV Docker

This includes two docker files for creating images for x86 and ARM processors.



To build the images go into the directory where the corresponding _Dockerfile_ is located and execute:
```
docker build -t opencv .
```
Or you can download the images from docker hub:
* https://hub.docker.com/r/calabozo/opencv/
* https://hub.docker.com/r/calabozo/opencv-raspbian/


To execute simply run:
```
docker run -it -e DISPLAY=$DISPLAY  -v /tmp/.X11-unix:/tmp/.X11-unix --device /dev/video0 opencv
```
This image includes a small example in /root/webcamtest.py to test the webcam. You can execute with the following command:
```
docker run -it -e DISPLAY=$DISPLAY  -v /tmp/.X11-unix:/tmp/.X11-unix --device /dev/video0 opencv python /root/webcamtest.py
```
Note: To execute the webcamtest example you need to enable the display in your session. This can be done with xhost +
