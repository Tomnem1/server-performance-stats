#!/usr/bin/env bash
df -h | grep '/$' | awk '{print "Used: " $3,"Free: " $4,"Usage: " $5}'