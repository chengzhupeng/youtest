if [ ! -e  /usr/lib/systemd/system/vncserver@.service ];then
	yum install tigervnc-server -y
fi
cp /usr/lib/systemd/system/vncserver@.service /usr/lib/systemd/system/vncserver@\:1.service
sed -i 's#^ExecStart=.*#ExecStart=/usr/sbin/runuser -l root -c "/usr/bin/vncserver %i"#' /usr/lib/systemd/system/vncserver@\:1.service
sed -i 's#^PIDFile=.*#PIDFile=/root/.vnc/%H%i.pid#' /usr/lib/systemd/system/vncserver@\:1.service
(echo passw0rd ;echo passw0rd;echo n )|vncpasswd
systemctl enable vncserver@\:1.service
systemctl start vncserver@\:1.service
