FROM library/debian:12.7-slim@sha256:9ee6ff242af816b21b27962f204e091ac814ebae96709e80bb49a2393c6ff673

RUN apt-get update && apt-get install -y \
  ca-certificates \
  direvent \
  rsync \
  && rm -rf /var/lib/apt/lists/*

ENTRYPOINT [ "/usr/bin/direvent", "-f", "/app/config/direvent.conf" ]
