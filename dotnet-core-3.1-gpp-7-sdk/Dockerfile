FROM ubuntu:bionic

ENV DEBIAN_FRONTEND noninteractive
WORKDIR /tmp
# update system packages
RUN apt-get update
# install packages repos
RUN apt-get install software-properties-common -y
RUN apt-get install wget -y
RUN add-apt-repository ppa:ubuntu-toolchain-r/test
# upgrade current packages 
RUN apt-get update
RUN apt-get upgrade -y
# install gcc-9 g++-9 and bootstrap libraries
RUN apt-get install gcc-9 -y
RUN apt-get install g++-9 -y
RUN apt-get install libboost-all-dev -y
# update default gcc and g++ version
RUN update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-9 100
RUN update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-9 100
# install latest version of cmake
RUN wget -q https://github.com/Kitware/CMake/releases/download/v3.17.0-rc3/cmake-3.17.0-rc3-Linux-x86_64.tar.gz
RUN tar -xzf cmake-3.17.0-rc3-Linux-x86_64.tar.gz -C /usr/local --strip-components=1
RUN cmake --version
# image cleanup
RUN apt-get clean
RUN rm -rf /tmp

ENTRYPOINT [ "/bin/bash" ]