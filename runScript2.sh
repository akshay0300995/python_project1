PID=`ps -eaf | grep 5000 | grep -v grep | awk '{print $2}'`
if [[ "" !=  "$PID" ]]; then
  echo "killing $PID"
  echo $PID
  kill -9 $PID
fi
nohup python /home/ubuntu/python_project.py
