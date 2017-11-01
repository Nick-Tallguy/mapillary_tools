FROM ubuntu:16.04

# SETUP
RUN \
    apt-get -qq update && \
    apt-get -yqq install \
        python-pip && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN \
    pip install --upgrade pip

COPY . /source/mapillary_tools

WORKDIR /source/mapillary_tools

RUN pip install -r python/requirements.txt
