#!/bin/bash
ps -ef|awk {'print $8'} | tr -d "[]" > whlist
echo -e "./restore.sh\nps -ef\ngrep -v -f whlist\nprint $2\nxargs kill " >> whlist
