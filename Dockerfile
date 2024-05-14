FROM library/debian:12.5-slim@sha256:804194b909ef23fb995d9412c9378fb3505fe2427b70f3cc425339e48a828fca

RUN apt-get update && apt-get install -y \
  ca-certificates \
  direvent \
  rsync \
  && rm -rf /var/lib/apt/lists/*

ENTRYPOINT [ "/usr/bin/direvent", "-f", "/app/config/direvent.conf" ]
