#!/bin/sh

yt-dlp --extract-audio --audio-format=mp3 --no-keep-video --embed-metadata --embed-thumbnail --add-metadata -o "./%(title)s.%(ext)s" $1
# --embed-subs --sub-langs en
