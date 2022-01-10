#!/bin/bash

COUNT=$(dunstctl count waiting)
ENABLED="{\"text\": \"\",\"class\": \"enabled\",\"tooltip\": \"Focus mode off\"}"
DISABLED="{\"text\": \"\",\"class\": \"dnd\",\"tooltip\": \"Focus mode on\"}"
if dunstctl is-paused | grep -q "false" ; then echo $ENABLED; else echo $DISABLED; fi
