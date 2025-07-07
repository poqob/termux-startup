#!/bin/bash
who=$(whoami)



sshd -p $PORT &

echo Session: $who@$IP:$PORT