FROM lsiobase/alpine.python:3.7

# set version label
ARG BUILD_DATE
ARG VERSION
LABEL build_version="Linuxserver.io version:- ${VERSION} Build-date:- ${BUILD_DATE}"
LABEL maintainer="sparklyballs"

# set python to use utf-8 rather than ascii
ENV PYTHONIOENCODING="UTF-8"

# install app
RUN \
 git clone --depth 1 git://github.com/midgetspy/Sick-Beard.git /app/sickbeard

# add local files
COPY root/ /

# ports and volumes
EXPOSE 8081
VOLUME /config /downloads /tv
