FROM library/debian:stable-20211011-slim

RUN apt-get update && apt-get install -y \
  ca-certificates \
  direvent \
  && rm -rf /var/lib/apt/lists/*

ENTRYPOINT [ "/usr/bin/direvent", "-f", "/app/config/direvent.conf" ]
