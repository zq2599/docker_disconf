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


if [ -n "$CUR_BUNDLE_NAME" ] ; then
    PIDS=`ps -ef | grep ${CUR_BUNDLE_NAME} | grep -v ' grep' | awk '{print $2}'`
    for f in `echo ${PIDS[@]}`; do
        echo "Find process and pid=["$f"]"
        kill -9 $f
        echo "Kill pid=["$f"] done"
    done
fi

