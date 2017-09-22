FROM debian
RUN apt-get update && apt-get install -y \
    git \
    build-essential \
    cmake \
    libgmp-dev \
&& cd ~ \
&& git clone https://github.com/smtrat/carl \
&& cd ~/carl \
&& git checkout tags/17.08 \
&& mkdir build && cd build && cmake ../ \
&& make resources \
&& make
