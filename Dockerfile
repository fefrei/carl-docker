FROM debian
RUN apt-get update && apt-get install -y \
    git \
    mercurial \
    build-essential \
    cmake \
    libgmp-dev
RUN git config --global user.email "felix@fefrei.de" \
&&  git config --global user.name "Felix Freiberger"
RUN cd ~ \
&& git clone https://github.com/smtrat/carl \
&& cd ~/carl \
&& git checkout tags/18.08
RUN cd ~/carl \
&& mkdir build && cd build && cmake ../ \
&& make
