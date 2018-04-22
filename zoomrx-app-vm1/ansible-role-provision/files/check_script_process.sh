#!/bin/bash
NOW=$(date +"%D %T")
check_proc=$(ps -ef | grep remediation.sh | grep -v grep | wc -l)
if [ "$check_proc" -ge 1 ]; then
	echo "$NOW - Process Running !!!... " >> /var/log/cron
else
	echo  "$NOW - Process not running , self restart the process " >> /var/log/cron
	/webapps/zoomrx/remediation.sh &	
fi
