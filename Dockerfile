FROM docker.io/kalilinux/kali-rolling:latest
LABEL maintainer="iesplin"

RUN apt-get update \
  && apt-get install -y --no-install-recommends --allow-downgrades \
    apt-utils \
    bash \
    iproute2 \
    locales \
    python3 \
    sudo \
    systemd \
    systemd-cron  \
  && apt-get clean \
  && rm -Rf /var/lib/apt/lists/* 

VOLUME ["/sys/fs/cgroup", "/tmp", "/run"]
CMD ["/lib/systemd/systemd"]