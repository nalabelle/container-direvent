FROM library/debian:stable-slim@sha256:6e6da916a82e394647b7a4353d3894fcf15b1e0888b29e12aa411377b5647d9c

RUN apt-get update && apt-get install -y \
  ca-certificates \
  direvent \
  rsync \
  && rm -rf /var/lib/apt/lists/*

ENTRYPOINT [ "/usr/bin/direvent", "-f", "/app/config/direvent.conf" ]
