FROM ubuntu:latest

LABEL maintainer="hello@saundersdigital.com.au"
LABEL version="1.0"
LABEL description="This is a custom Docker image for imapsync"

ARG DEBIAN_FRONTEND=noninteractive

WORKDIR /root

RUN apt update

RUN apt-get install -y \
    libauthen-ntlm-perl \
    libclass-load-perl \
    libcrypt-openssl-rsa-perl \
    libcrypt-ssleay-perl \
    libdata-uniqid-perl \
    libdigest-hmac-perl \
    libdist-checkconflicts-perl \
    libencode-imaputf7-perl \
    libfile-copy-recursive-perl \
    libfile-tail-perl \
    libio-compress-perl \
    libio-socket-inet6-perl \
    libio-socket-ssl-perl \
    libio-tee-perl \
    libjson-webtoken-perl \
    libmail-imapclient-perl \
    libmodule-scandeps-perl \
    libnet-dbus-perl \
    libnet-ssleay-perl \
    libpar-packer-perl \
    libproc-processtable-perl \
    libreadonly-perl \
    libregexp-common-perl \
    libsys-meminfo-perl \
    libterm-readkey-perl \
    libtest-fatal-perl \
    libtest-mock-guard-perl \
    libtest-mockobject-perl \
    libtest-pod-perl \
    libtest-requires-perl \
    libtest-simple-perl \
    libunicode-string-perl \
    liburi-perl \
    libtest-nowarnings-perl \
    libtest-deep-perl \
    libtest-warn-perl \
    make \
    time \
    cpanminus \
    wget \
    && rm -rf /var/lib/apt/lists/* \
    && apt clean

RUN wget -N https://raw.githubusercontent.com/imapsync/imapsync/master/imapsync
RUN chmod +x imapsync && mv imapsync /usr/bin/