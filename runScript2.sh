sudo PID=`ps -eaf | grep 5000 | grep -v grep | awk '{print $2}'`
if [[ "" !=  "$PID" ]]; then
  sudo echo "killing $PID"
  sudo echo $PID
   sudo kill -9 $PID
fi
sudo screen -m -d python /home/ubuntu/python_project/new.py
