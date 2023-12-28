#!/bin/bash

IP="192.168.1.11"
PORT="88"
STREAM="videoMain"
USERNAME="dogrun"
PASSWORD="password"

# Construct the RTSP URL
URL="rtsp://$USERNAME:$PASSWORD@$IP:$PORT/$STREAM"

# Use ffplay to play the stream
ffplay "$URL" \
    -an \
    -max_delay 5000000 \
    -bufsize 1024000


