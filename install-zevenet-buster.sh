echo ""
echo " === INSTALL PACKAGE NEEDED === "
echo ""
apt install make gnupg git

echo ""
echo " === ADD NEW REPOSITORY TO SOURCE LIST === "
echo ""
echo "deb http://repo.zevenet.com/ce/v5/ buster main" >> /etc/apt/sources.list
wget -O - http://repo.zevenet.com/zevenet.com.gpg.key | apt-key add -

echo ""
echo " === UPDATE PACKAGE === "
echo ""
apt update

echo ""
echo " === INSTALL ZEVENET === "
echo ""
apt install zevenet

echo ""
echo " === INSTALL ZEVENET GUI === "
echo ""
apt install zevenet-gui-ce
