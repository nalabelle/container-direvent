FROM library/debian:12.4-slim@sha256:f80c45482c8d147da87613cb6878a7238b8642bcc24fc11bad78c7bec726f340

RUN apt-get update && apt-get install -y \
  ca-certificates \
  direvent \
  rsync \
  && rm -rf /var/lib/apt/lists/*

ENTRYPOINT [ "/usr/bin/direvent", "-f", "/app/config/direvent.conf" ]
