FROM pace25_ds_base24

RUN apt-get update && apt-get install -y libbz2-dev && rm -rf /var/lib/apt/lists/*

COPY code /code
COPY inner_build.sh /code/
RUN cd /code && /bin/bash inner_build.sh

