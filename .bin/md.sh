#!/bin/sh

pandoc "$1" | lynx -stdin
