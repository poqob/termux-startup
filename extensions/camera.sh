#!/bin/bash
#param 1 is camera number 0,1,2..



DATE_RESULT=$(date --rfc-3339 date)


shot_photo(){
termux-camera-photo -c 1 $TMP/session/img/$DATE_RESULT.png 
}

show_session_photo() {
DATE_RESULT=$(date --rfc-3339 date)
viu $TMP/session/img/$DATE_RESULT.png 
}



if [ $SHOW_PICTURE -eq 1 ]; then
  shot_photo 
  show_session_photo 
fi