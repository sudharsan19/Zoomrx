#!/bin/bash
while true; do
	NOW=$(date +"%D %T") 
	process_check=$(ps -ef | grep app.py | grep -v grep | wc -l)
	if [ "$process_check" -ge 1 ]; then
		echo " $NOW - OK:  Application Process is running" >> /var/log/remedy.log
	else
		echo " $NOW - CRITICAL: Application Process needs to be restarted again!!!!" >> /var/log/remedy.log
		python /webapps/zoomrx/app.py >> /var/log/zoomrx/app.log &
	fi
	sleep 10
done
