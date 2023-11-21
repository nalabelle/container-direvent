FROM library/debian:12.2-slim@sha256:d190ca141f6860a5d97661f98d783acd6a09312786f4f8d167558b1813da07a6

RUN apt-get update && apt-get install -y \
  ca-certificates \
  direvent \
  rsync \
  && rm -rf /var/lib/apt/lists/*

ENTRYPOINT [ "/usr/bin/direvent", "-f", "/app/config/direvent.conf" ]
