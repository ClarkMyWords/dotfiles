#!/bin/sh

yt-dlp --extract-audio --audio-format=mp3 --no-keep-video $1
