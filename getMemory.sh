help_message="usage: $0 PID_NUMBER"

TIME_STEP=5 #seconds
PID_NUMBER=$1

if [ -z $PID_NUMBER ]; then
 echo "$help_message"
 exit 0
fi

while [[ 1 -eq 1 ]]; 
do 
  echo "DAY=$(date +"%d-%m-%y") TIME=$(date +"%T") RAM(MB)=$(echo "$(cat /proc/$PID_NUMBER/status | grep -i VmRSS | awk -F' ' '{print $2}')/1024" | bc)"; 
  sleep $TIME_STEP; 
done
