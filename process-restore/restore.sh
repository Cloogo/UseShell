#!/bin/bash
ps -ef|grep -v -f whlist|awk {'print $2'}|xargs kill
