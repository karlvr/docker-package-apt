FROM ubuntu:22.04

RUN apt-get update \
	&& apt-get install -y --no-install-recommends \
		build-essential \
		debhelper \
		dh-make \
		devscripts \
		gnupg2 \
		gnupg-agent \
	&& dpkg --add-architecture amd64 \
	&& dpkg --add-architecture arm64
RUN mkdir /build
WORKDIR /build

RUN useradd --create-home --home /home/builder --groups users builder --shell /bin/bash
RUN chown builder /build
USER builder
