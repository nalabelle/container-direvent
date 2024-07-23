FROM library/debian:12.6-slim@sha256:0c04a3d3eb3dc9c61a76b0c5bc93bb0d02272f6195fe4eab7d6d8ed30a62736a

RUN apt-get update && apt-get install -y \
  ca-certificates \
  direvent \
  rsync \
  && rm -rf /var/lib/apt/lists/*

ENTRYPOINT [ "/usr/bin/direvent", "-f", "/app/config/direvent.conf" ]
