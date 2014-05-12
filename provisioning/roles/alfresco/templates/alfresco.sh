#!/bin/sh -e

# Start or stop Alfresco server

# Set the following to where Tomcat is installed
ALF_HOME={{ alfresco_user_home }}
cd "$ALF_HOME"
APPSERVER="${ALF_HOME}/tomcat"
export CATALINA_HOME="$APPSERVER"

# Set any default JVM values
export JAVA_OPTS='{{ java_opts }}'
export JAVA_OPTS="${JAVA_OPTS} -Dalfresco.home=${ALF_HOME} -Dcom.sun.management.jmxremote"

if [ "$1" = "start" ]; then
 "${APPSERVER}/bin/startup.sh"
 if [ -r ./start_oo.sh ]; then
  "${ALF_HOME}/bin/start_oo.sh"
 fi
elif [ "$1" = "stop" ]; then
 "${APPSERVER}/bin/shutdown.sh"
 killall -u alfresco java
 killall -u alfresco soffice.bin
fi
