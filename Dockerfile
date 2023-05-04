FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    git

RUN mkdir /root/A && \
    mkdir /root/B && \
    mkdir /root/C && \
    mkdir /root/files && \
    touch /root/files/a.txt && \
    touch /root/files/b.txt && \
    touch /root/files/c.txt

WORKDIR /root
RUN git clone https://github.com/BongYeob/two-sum.git