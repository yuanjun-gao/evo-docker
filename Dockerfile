# Author:
# Yuanjun Gao <yuanjun2602@gmail.com>
# at Carnegie Mellon University

FROM python:3.9-bookworm

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update

RUN apt-get install -y python3-pip

COPY evo /root/evo

WORKDIR /root/evo

RUN pip install --editable . --upgrade --no-binary evo

WORKDIR /root

RUN rm -r /root/evo