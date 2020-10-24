#!/bin/bash
while true

do

  
  CPU=$(top -bn1 | awk '/Cpu/ { cpu = 100 - $8 }; END   { print cpu }')
   
  curl --header "Content-Type: application/json"   --request POST   --data '{"loads":{"load":"'"$CPU"'"}}'   http://127.0.0.1:8000/api/loadcpu/
  sleep  10
done
