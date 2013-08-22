#!/bin/bash
#Prints total VSZ and RSZ of the running processes in the system

ps --no-headers -eo vsz |awk '{total = total + $1}END{print "VSZ:" total}'
ps --no-headers -eo rss |awk '{total = total + $1}END{print "RSZ:" total}'
