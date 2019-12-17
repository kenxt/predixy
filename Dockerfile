FROM ubuntu:18.04
LABEL maintainer="kenxt of etc.sjtu.edu.cn"
ENV VERSION 1.0.5
RUN apt-get update && apt-get upgrade -y \
    && apt-get install -y build-essential wget unzip \
    && cd /usr/local/src \
    && wget --no-check-certificate https://github.com/joyieldInc/predixy/archive/${VERSION}.zip -O predixy-${VERSION}.zip \
    && unzip predixy-${VERSION}.zip \
    && cd predixy-${VERSION} \
    && make \
    && mv src/predixy /usr/local/bin \
    && mkdir -p /etc/predixy/conf \
    && rm -f predixy-${VERSION}.zip \
    && apt-get  --purge remove -y  wget unzip \
    && apt-get clean -y \
    && apt-get autoremove -y   
CMD ["/usr/local/bin/predixy", "/etc/predixy/conf/predixy.conf"]
