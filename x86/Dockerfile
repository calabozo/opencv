from	ubuntu:latest


# runtime dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
        curl wget build-essential cmake python2.7 python2.7-dev \
        libavformat-dev libavcodec-dev libavfilter-dev libswscale-dev libv4l-dev \
        libjpeg-dev libpng-dev libtiff-dev libjasper-dev zlib1g-dev libopenexr-dev libxine2-dev libeigen3-dev libtbb-dev libgtk2.0-dev\
        python-pip \
        unzip \
        && rm -rf /var/lib/apt/lists/*

run pip install numpy

RUN cd \
    && wget https://github.com/opencv/opencv/archive/3.2.0.zip \
    && unzip 3.2.0.zip \
    && cd opencv-3.2.0 \
    && mkdir build \
    && cd build \
    && cmake -D CMAKE_BUILD_TYPE=RELEASE -D WITH_GTK=ON -D WITH_V4L=ON -DBUILD_QOPENTLD=ON -DUSE_SYSTEM_LIBS=OFF -D BUILD_PYTHON_SUPPORT=ON -D BUILD_TESTS=OFF -D BUILD_PERF_TESTS=OFF -D CMAKE_INSTALL_PREFIX=/usr/local .. \
    && make -j\
    && make install\
    && cd \
    && rm 3.2.0.zip

ADD webcamtest.py /root/

CMD python
