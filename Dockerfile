FROM debian
RUN apt-get update && apt-get install -y \
    git \
    build-essential \
    cmake \
    libgmp-dev \
&& cd ~ \
&& git clone https://github.com/smtrat/carl \
&& cd ~/carl \
&& git checkout tags/18.04 \
&& mkdir build && cd build && cmake ../ \
&& make
