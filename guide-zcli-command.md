# how to create network virtual interfaces

    zcli -j network-virtual create '{"name":"eth0:vmnic1","ip":"<<your_virtual_ip>"}'

# how to create new farm service
    farm-service add <your_farm> -id <your_service>
# how to create new farm service backend
    farm-service-backend add <your_farm> <your_service> -ip <your_backend_ip> -port 443
# how to create farm guardian    
    farm-service-farmguardian add <your_farm> <your_service> -name check_tcp
