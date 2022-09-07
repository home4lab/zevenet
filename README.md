HOW TO USE THIS

git clone https://github.com/home4lab/zevenet.git

chmod +x install-zevenet-buster.sh

./install-zevenet-buster.sh

# change certificate for web gui zevenet

ZEVENET CE web GUi uses cherokee for SSL implementation, please refer to the config file in the path /usr/local/zevenet/app/cherokee/etc/cherokee/cherokee.conf


    vserver!1!ssl_certificate_file = /usr/local/zevenet/config/certificates/zencert.pem
    vserver!1!ssl_certificate_key_file = /usr/local/zevenet/config/certificates/zencert-c.key

then, restart cherokee (web management zevenet)

    $systemctl restart cherokee


# configure cluster (optional)


first, create your ssh public key

run from both of your server

    $ssh-keygen -t rsa
    $ssh-copy-id -i $HOME/.ssh/id_rsa.pub root@your_remote_ip



install package for zevenet cluster

    $apt install zevenet-ce-cluster
    
edit file /usr/local/zevenet/app/ucarp/etc/zevenet-cluster.conf and change the following variable:

    $local_ip="your_master_ip";
    $remote_ip="your_backup_ip";
    $cluster_ip="your_virtual_ip_for_cluster";
    
    
edit file /etc/init.d/zevenet-ce-cluster and change the following variable:

    enable_cluster="true";
    
then enable cluster service for zevenet and restart cluster service

    $systemctl enable zevenet-ce-cluster
    $/etc/init.d/zevenet-ce-cluster stop
    $/etc/init.d/zevenet-ce-cluster start

don't forget to add your virtual ip in zevenet web gui

references:
https://www.zevenet.com/knowledge-base/howtos/how-to-configure-a-cluster-in-zevenet-community-edition-v-5-0/

# references to setting lslb farm http profile

https://www.zevenet.com/knowledge-base/enterprise-edition/enterprise-edition-v5-0-administration-guide/lslb-farms-update-http-profile/

# plugins
you can use farmguardians to check the backend connection
location of plugin are in here >> /usr/lib/nagios/

# zcli
farm list


network-virtual create -ip <ip> -name eth0:<name>

farm create -farmname bts -vip <virtual-ip> -profile http -vport <virtual-port>
farm set <farm-name> -listener https

