FROM library/debian:12.4-slim@sha256:f4a83aa865a2b4a064ff142aa91c713180df9fcb86ce676b5de2981029379c37

RUN apt-get update && apt-get install -y \
  ca-certificates \
  direvent \
  rsync \
  && rm -rf /var/lib/apt/lists/*

ENTRYPOINT [ "/usr/bin/direvent", "-f", "/app/config/direvent.conf" ]
