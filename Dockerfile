FROM library/debian:12.6-slim@sha256:e7062870b4d50179b6968d740c3620675702013abc952e482f6574a4eb68439e

RUN apt-get update && apt-get install -y \
  ca-certificates \
  direvent \
  rsync \
  && rm -rf /var/lib/apt/lists/*

ENTRYPOINT [ "/usr/bin/direvent", "-f", "/app/config/direvent.conf" ]
