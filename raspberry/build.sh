
wget https://github.com/opencv/opencv/archive/3.2.0.zip
mkdir build
cd build
cmake -D CMAKE_BUILD_TYPE=RELEASE -D WITH_V4L=ON -DBUILD_QOPENTLD=ON -DUSE_SYSTEM_LIBS=OFF -D BUILD_PYTHON_SUPPORT=ON -D BUILD_TESTS=OFF -D BUILD_PERF_TESTS=OFF -D CMAKE_INSTALL_PREFIX=/usr/local ..
make -j


