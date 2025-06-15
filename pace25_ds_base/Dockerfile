FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

# Basic Setup (tools required by atleast one solver)
RUN apt-get update && apt-get install -y \
    build-essential python3 python3-pip time util-linux unzip \
    g++ build-essential pkg-config cmake clang-14 git\
    libcliquer1 gfortran liblapack3 libopenblas-dev libgsl-dev libtbb12 libfmt-dev \
    curl ca-certificates libssl-dev libgfortran5 libgmp-dev \
    libargtable2-dev libomp-dev \ 
    && rm -rf /var/lib/apt/lists/*

# Install Rust
RUN curl https://sh.rustup.rs -sSf | sh -s -- -y --default-toolchain nightly --profile minimal

COPY runner /code
COPY inner_build.sh /code/
RUN /bin/bash /code/inner_build.sh
