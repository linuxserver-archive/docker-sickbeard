#!/bin/bash

[[ ! -d /app/sickbeard/.git ]] && git clone git://github.com/midgetspy/Sick-Beard.git /app/sickbeard
cd /app/sickbeard
git pull
chown -R abc:abc /app /config
