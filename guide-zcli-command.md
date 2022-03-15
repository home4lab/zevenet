# how to create network virtual interfaces

    zcli -j network-virtual create '{"name":"eth0:srv","ip":"192.168.100.32"}'

# how to create new farm service
    farm-service add external -id
# how to create new farm service backend
    farm-service-backend add external mantap -ip 172.16.42.116 -port 443
