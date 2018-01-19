# sshcpanelbackup
Get cpanel backup from remote server with bash script

Before you start,

You need to install sshpass and root access. Dont forget chmod -x script.sh

I use this script to get daily backup my basic backup server.

If you want to create daily backup like me;

move your file /home directory or change path in following code.
type;
crontab -e 

(if you first time open crontab may ask to choose editor. I suggested nano )
add following code at the end of the file;
1 2 * * * sudo /home/script.sh 
