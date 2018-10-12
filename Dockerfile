FROM debian
RUN apt-get update && apt-get install -y \
    git \
    mercurial \
    build-essential \
    cmake \
    libgmp-dev
RUN cd ~ \
&& git clone https://github.com/smtrat/carl \
&& cd ~/carl \
&& git checkout tags/18.06
RUN cd ~/carl \
&& mkdir build && cd build && cmake ../ \
&& make
