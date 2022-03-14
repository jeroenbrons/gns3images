from almalinux:latest

RUN dnf config-manager --set-enabled powertools
RUN dnf update -y
RUN dnf install -y bash zsh vim nano
ENTRYPOINT [ "/bin/bash" ]