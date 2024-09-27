FROM library/debian:12.7-slim@sha256:5de9e23e78fbbeea7a67efd02c2b072fecafb7efa6cf4563f355292161c53793

RUN apt-get update && apt-get install -y \
  ca-certificates \
  direvent \
  rsync \
  && rm -rf /var/lib/apt/lists/*

ENTRYPOINT [ "/usr/bin/direvent", "-f", "/app/config/direvent.conf" ]
