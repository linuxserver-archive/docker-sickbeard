FROM sparklyballs/base-python-alpine
MAINTAINER sparklyballs

# set python to use utf-8 rather than ascii
ENV PYTHONIOENCODING="UTF-8"

# copy local files
COPY root/ /

# Volumes and Ports
VOLUME /config /downloads /tv
EXPOSE 8081

