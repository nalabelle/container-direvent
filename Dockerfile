FROM library/debian:12.7-slim@sha256:ad86386827b083b3d71139050b47ffb32bbd9559ea9b1345a739b14fec2d9ecf

RUN apt-get update && apt-get install -y \
  ca-certificates \
  direvent \
  rsync \
  && rm -rf /var/lib/apt/lists/*

ENTRYPOINT [ "/usr/bin/direvent", "-f", "/app/config/direvent.conf" ]
