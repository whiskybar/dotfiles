usermod jbar -s /bin/bash
usermod -a -G wheel jbar
sed '/wheel.*NOPASSWD/s/^#* //g' -i /etc/sudoers
echo '%wheel ALL=(ALL:ALL) NOPASSWD: ALL' >/etc/sudoers.d/10-installer
sed '/deny.*3/adeny = 0' -i /etc/security/faillock.conf

cp files/etc/environment /etc
cp files/etc/bash_aliases /etc
echo '. /etc/bash_aliases' >>/etc/bash.bashrc
echo 'set enable-bracketed-paste off' >>/etc/inputrc

cp files/us /usr/share/X11/xkb/symbols/us
rm -f /var/lib/xkb/*.xkm

echo '#Samsung SCX-3205W' >>/etc/sane.d/xerox_mfp.conf
echo 'tcp 192.168.68.105 9400' >>/etc/sane.d/xerox_mfp.conf

sed '/StrictHostKeyChecking/s/.*/StrictHostKeyChecking no/' -i /etc/ssh/ssh_config
echo 'PubkeyAcceptedKeyTypes +ssh-rsa' >>/etc/ssh/ssh_config

