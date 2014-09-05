#!/bin/sh
#
#       Shutdown Tomcat.
#       Called immediately just before FIP moves newly installed files into place.
#
. /home/tooltwist/site-conf/bin/setenv.sh
cat >> /home/tooltwist/server/tomcat/logs/catalina.out << ENDD

    ------------------- FIP PRE COMMIT (shutdown) -------------------

    The server is being shut down by FIP (File Installation Protocol)
    so it can make adjustments to the files in the server directory.

    -----------------------------------------------------------------

ENDD

/home/tooltwist/server/tomcat/bin/shutdown.sh
sleep 5
