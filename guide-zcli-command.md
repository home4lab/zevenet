# create network virtual interfaces
    zcli -j network-virtual create '{"name":"eth0:vmnic1","ip":"<<your_virtual_ip>"}'
# add new farm service
    farm-service add <your_farm> -id <your_service>
# set virtual host
    farm-service set <your_farm> <your_service> -httpsb true -vhost <your_virtual_host>
# add new farm service backend
    farm-service-backend add <your_farm> <your_service> -ip <your_backend_ip> -port 443
# set farm guardian    
    farm-service-farmguardian add <your_farm> <your_service> -name check_tcp
