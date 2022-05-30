FROM library/debian:stable-slim@sha256:ca23097a7102e36e170c29e2e7ab8de2ea81bc9d620a4c48edc5287fb780388c

RUN apt-get update && apt-get install -y \
  ca-certificates \
  direvent \
  rsync \
  && rm -rf /var/lib/apt/lists/*

ENTRYPOINT [ "/usr/bin/direvent", "-f", "/app/config/direvent.conf" ]
