#!/bin/bash

# startup.sh
clear
source $CONF
$STARTUP/banner.sh
$STARTUP/extensions/camera.sh 
$STARTUP/extensions/connections.sh 

#run user defined executable scripts if $RUN_EXECUTABLES is set to 1
EXEC_DIR="$STARTUP/exec"

# Loop through all .sh files or executable files in the directory
for file in "$EXEC_DIR"/*; do
  if [ -f "$file" ] && [ -x "$file" ] && [ "$RUN_EXECUTABLES" -eq 1 ]; then
    "$file"
  elif [[ "$file" == *.sh && "$RUN_EXECUTABLES" -eq 1 ]]; then
    sh "$file"
  fi
done