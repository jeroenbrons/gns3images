#!/bin/bash
echo "Please login!"
docker login
#almalinux
cd almalinux
##generic
    cd generic
    docker build -t idiotoflinux/gns3images:almalinux .
    docker push idiotoflinux/gns3images:almalinux
    cd ..
##WBEM
    cd wbem
    docker build -t idiotoflinux/gns3images:almalinuxwbem
    docker push idiotoflinux/gns3images:almalinuxwbem
    cd ..
#end almalinux
cd ..


#Opensuse
cd opensuse
    ##Leap
    cd leap
    docker build -t idiotoflinux/gns3images:opensuseleap
    docker push idiotoflinux/gns3images:opensuseleap
    cd ..
    ##Tumbleweed
    cd tumbleweed
    docker build -t idiotoflinux/gns3images:opensusetumbleweed .
    docker push idiotoflinux/gns3images:opensusetumbleweed
    cd ..
#end opensuse    
cd ..

#Ubuntu
cd ubuntu
    #focal
    cd ubuntufocal
    docker build -t idiotoflinux/gns3images:ubuntufocal .
    docker push idiotoflinux/gns3images:ubuntufocal
    cd ..
    #Hirsute
    cd ubuntuhirsute
    docker build -t idiotoflinux/gns3images:ubuntuhirsute .
    docker push idiotoflinux/gns3images:ubuntuhirsute
    cd ..
#end ubuntu
cd ..





#######
#TEMPLATE
#cd <DISTRO>
#   cd <VARIANT>
#   # variant
#    docker build -t idiotoflinux/gns3images:variant .
#    docker push idiotoflinux/gns3images:variant
#   # end <variant>
#    cd ..
# cd ..