FROM library/debian:12.7-slim@sha256:676e29c359e455298332c3b6b168d4b4765568dd76b192da56dd427af3163da4

RUN apt-get update && apt-get install -y \
  ca-certificates \
  direvent \
  rsync \
  && rm -rf /var/lib/apt/lists/*

ENTRYPOINT [ "/usr/bin/direvent", "-f", "/app/config/direvent.conf" ]
