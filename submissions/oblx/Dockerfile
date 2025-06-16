FROM pace25_ds_base24

COPY code /code
COPY inner_build.sh /code/
COPY exact /exact
RUN cd /code && /bin/bash inner_build.sh

