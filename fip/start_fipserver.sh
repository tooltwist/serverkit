#!/bin/sh
#
#	Start the server for FIP (File Installation Protocol)
#

echo Starting fipserver
#export JAVA_OPTS="${JAVA_OPTS} -Djava.security.egd=file:/dev/urandom
export JAVA_OPTS="${JAVA_OPTS}"
java -jar fipserver-1.0.1-shadow.jar -v 39393
