from ubuntu:hirsute

RUN apt update 
ENV DEBIAN_FRONTEND=noninteractive
RUN apt install -y isc-dhcp-common bash zsh iproute2 vim nano isc-dhcp-client netplan.io
ENTRYPOINT [ "/bin/bash" ]