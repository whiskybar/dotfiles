pacman -S logiops-git
cp files/etc/logid.cfg /etc
systemctl restart logid
systemctl enable logid.service

