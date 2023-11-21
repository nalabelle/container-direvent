FROM library/debian:12.2-slim@sha256:db6a57eef8c995104f17484d8b48eff28d8f3e2e9f1288fe8e8d1b72107d2d07

RUN apt-get update && apt-get install -y \
  ca-certificates \
  direvent \
  rsync \
  && rm -rf /var/lib/apt/lists/*

ENTRYPOINT [ "/usr/bin/direvent", "-f", "/app/config/direvent.conf" ]
