#!/usr/bin/env bash

server_root=`pwd`

if test -e ${server_root}/env ; then
    source ${server_root}/env
fi

#
# check bundle name
#
if [ -n "${BUNDLE_JAR_NAME}" ]; then
 	CUR_BUNDLE_NAME=${BUNDLE_JAR_NAME}
else
	echo "please set up BUNDLE_JAR_NAME in env"
	exit
fi

#export JAVA_OPTS="$JAVA_OPTS -Dcom.sun.management.jmxremote.port=9527 -Dcom.sun.management.jmxremote.ssl=false -Dcom.sun.management.jmxremote.authenticate=false"
#export JAVA_OPTS="$JAVA_OPTS -Dcom.sun.management.snmp.interface=0.0.0.0 -Dcom.sun.management.snmp.port=12345 -Dcom.sun.management.snmp.acl=false"
#export JAVA_OPTS="$JAVA_OPTS -server -Xms1024m -Xmx1024m -Xmn448m -Xss256K -XX:MaxPermSize=128m -XX:ReservedCodeCacheSize=64m"
#export JAVA_OPTS="$JAVA_OPTS -XX:+UseParallelGC -XX:+UseParallelOldGC -XX:ParallelGCThreads=2"
#export JAVA_OPTS="$JAVA_OPTS -XX:+PrintGCDetails -XX:+PrintGCTimeStamps"

#echo "nohup java $JAVA_OPTS -jar ${CUR_BUNDLE_NAME}  >> log_`date +%s`.log 2>&1 &"
#nohup java $JAVA_OPTS -jar ${CUR_BUNDLE_NAME} >> log_`date +%s`.log 2>&1 &

echo "java $JAVA_OPTS -jar ${CUR_BUNDLE_NAME}  >> log_`date +%s`.log 2>&1 &"
java $JAVA_OPTS -jar ${CUR_BUNDLE_NAME}