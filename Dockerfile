FROM library/debian:12.4-slim@sha256:eb37f58646a901dc7727cf448cae36daaefaba79de33b5058dab79aa4c04aefb

RUN apt-get update && apt-get install -y \
  ca-certificates \
  direvent \
  rsync \
  && rm -rf /var/lib/apt/lists/*

ENTRYPOINT [ "/usr/bin/direvent", "-f", "/app/config/direvent.conf" ]
