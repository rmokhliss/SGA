pidpath="/home/oracle/API_MOBILE/PID"
jarpath="/home/oracle/API_MOBILE/API"
chmod 777 $pidpath/*
nohup java -jar $jarpath/auth.jar </dev/null >/dev/null 2>&1 & # completely detached from terminal 
echo $! > $pidpath/authpid





