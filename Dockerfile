FROM ubuntu

RUN apt-get update && apt-get install -y build-essential debhelper dh-make devscripts gnupg2 gnupg-agent
RUN mkdir /build
WORKDIR /build

RUN useradd --create-home --home /home/builder --groups users builder --shell /bin/bash
RUN chown builder /build
USER builder
