FROM mcr.microsoft.com/dotnet/runtime:3.1-bionic

RUN apt-get update -y
RUN apt-get dist-upgrade -y
RUN apt-get install software-properties-common -y
RUN add-apt-repository ppa:ubuntu-toolchain-r/test
RUN apt-get install libstdc++6 -y
RUN apt-get clean

ENTRYPOINT /bin/bash