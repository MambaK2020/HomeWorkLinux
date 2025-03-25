#!/bin/bash

USER=AlexN
date
echo hello $USER!
pwd
ps -ef | grep bioset | grep -v grep | wc -l
ls -la /etc/passwd | awk '{print $1}'
