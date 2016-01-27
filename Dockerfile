FROM wingyplus/debian-c:latest

RUN apt-get install -y \
  libaio-dev \
  ninja-build \
  ragel \
  libhwloc-dev \
  libnuma-dev \
  libpciaccess-dev \
  libcrypto++-dev \
  libboost-all-dev \
  libxen-dev \
  libxml2-dev \
  xfslibs-dev \
  libgnutls28-dev \
  python3 \
  curl \
  unzip

RUN curl -L -o seastar.zip https://github.com/scylladb/seastar/archive/master.zip && \
  unzip seastar.zip && cd seastar-master

RUN ./configure.py --compiler=/usr/bin/g++-4.9 && ninja
