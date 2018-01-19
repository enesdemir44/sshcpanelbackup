#!/bin/bash
### Before you start you need to install sshpass 
### example;
### sudo apt-get install sshpass -y
### yum install sshpass -y

cd /home
sshpass -p "yourpassword" ssh -o StrictHostKeyChecking=no root@YOURSERVERIP <<'ENDSSH'
/script/pkgacct BACKUPUSER
ENDSSH
folder_name="BACKUPUSER--$(date +%Y-%m-%d)"
mkdir "$folder_name"
cd "$folder_name"
sshpass -p "yourpassword" sftp -oBatchMode=no -b - root@YOURSERVERIP <<'ENDFTP'
cd /home
get cpmove-BACKUPUSER.tar.gz
ENDFTP
exit
