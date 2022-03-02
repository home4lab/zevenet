HOW TO USE THIS

git clone https://github.com/home4lab/zevenet.git

chmod +x install-zevenet-buster.sh

./install-zevenet-buster.sh

# change certificate for web gui zevenet

ZEVENET CE web GUi uses cherokee for SSL implementation, please refer to the config file in the path /usr/local/zevenet/app/cherokee/etc/cherokee/cherokee.conf

    vserver!1!ssl_certificate_file = /usr/local/zevenet/config/certificates/zencert.pem
    vserver!1!ssl_certificate_key_file = /usr/local/zevenet/config/certificates/zencert-c.key

systemctl restart cherokee

# references to setting lslb farm http profile

https://www.zevenet.com/knowledge-base/enterprise-edition/enterprise-edition-v5-0-administration-guide/lslb-farms-update-http-profile/

# plugins
you can use farmguardians to check the backend connection
location of plugin are in here >> /usr/lib/nagios/
