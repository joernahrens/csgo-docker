FROM centos:latest

RUN mkdir -p /opt/steam /opt/steamhome

# Setup
RUN yum update -y && yum install -y curl net-tools glibc.i686 libstdc++.i686

# Download and extract SteamCMD
RUN cd /opt/steam &&\
  curl -s http://media.steampowered.com/installer/steamcmd_linux.tar.gz | tar -vxz &&\
  ln -s /opt/steam/steamcmd.sh /opt/steam/steamcmd

# Update SteamCMD
RUN /opt/steam/steamcmd.sh +quit

VOLUME /opt/steamhome
WORKDIR /opt/steamhome

EXPOSE 27015/tcp
EXPOSE 27015/udp

ENTRYPOINT ["/bin/sh"]
