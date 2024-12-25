FROM library/debian:12.8-slim@sha256:518e5a4e83da8f769751d984a11cb648be2c89bd485c219f1975daf31f7860c9

RUN apt-get update && apt-get install -y \
  ca-certificates \
  direvent \
  rsync \
  && rm -rf /var/lib/apt/lists/*

ENTRYPOINT [ "/usr/bin/direvent", "-f", "/app/config/direvent.conf" ]
