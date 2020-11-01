log_time=`date +"%T"`
mv /home/ubuntu/python_project/nohup.out /home/ubuntu/python_project/nohup_$log_time 

PID=`sudo ps -eaf | grep 5000 | grep -v grep | awk '{print $2}'`
if [[ "" !=  "$PID" ]]; then
  sudo echo "killing $PID"
  sudo echo $PID
   sudo kill -9 $PID
fi
