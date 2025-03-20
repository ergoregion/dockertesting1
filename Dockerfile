FROM ubuntu:22.04

RUN apt update && apt install -y \
    wget \
    gpg \
    python3-pip \
    git \
    libgtest-dev \
    cmake\
    build-essential \
    cppcheck \
    libeigen3-dev \
    lcov

#Clean up
RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* 

#Build Eigen
ENV  Eigen_DIR=/usr/local/include/eigen3/cmake

#Build GTEST
RUN   cd /usr/src/gtest && cmake -B build -DCMAKE_INSTALL_PREFIX=install . && cmake --build ./build --parallel 36 && cmake --install ./build
ENV  GTest_DIR=${PWD}/build/



