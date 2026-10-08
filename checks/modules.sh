#!/bin/sh
# The daemon greets with @RSYNCD and, asked for an empty module name, lists src.
out=$(printf '@RSYNCD: 31.0\n\n' | curl -sS --max-time 3 telnet://rsync:873 2>/dev/null)
echo "$out" | grep -q '^@RSYNCD:' && echo "$out" | grep -q '^src'
