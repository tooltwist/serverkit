#!/bin/sh
#
#       Startup Tomcat.
#       This is called after FIP has moved new files into place.
#
. /home/tooltwist/site-conf/bin/setenv.sh
cat << ENDD >> /home/tooltwist/server/tomcat/logs/catalina.out

    ------------------- FIP POST COMMIT (startup) -------------------

    The server is being restarted by FIP (File Installation Protocol)
    after making adjustments to the files in the server directory.

    -----------------------------------------------------------------

ENDD

/home/tooltwist/server/tomcat/bin/startup.sh
