FROM alpine:latest

MAINTAINER ARC-TS <arcts-dev@umich.edu>

ARG BUILD_DATE
ARG VCS_REF
ARG VERSION

LABEL architecture="x86_64"               \
      build-date="$BUILD_DATE"            \
      license="MIT"                       \
      name="arcts/rsyslog"                \
      summary="Simple rsyslog container"  \
      version="$VERSION"                  \
      vcs-ref="$VCS_REF"                  \
      vcs-type="git"                      \
      vcs-url="https://github.com/arc-ts/rsyslog"

EXPOSE 514/tcp 
EXPOSE 514/udp

RUN apk add --no-cache rsyslog

COPY /skel /

RUN chmod +x init.sh

ENTRYPOINT [ "./init.sh" ]
