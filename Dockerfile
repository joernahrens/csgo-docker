FROM centos:latest

# Setup
RUN echo "Installing Packages ..." &&\
	# Install
	yum update -y &&\
	yum install -y curl &&\
	# Download and extract SteamCMD
	yum install -y glibc.i686 libstdc++.i686 &&\
	cd /usr/local/bin &&\
	curl -s http://media.steampowered.com/installer/steamcmd_linux.tar.gz | tar -vxz &&\
	ln -s /usr/local/bin/steamcmd.sh /usr/local/bin/steamcmd

# Update SteamCMD
RUN /usr/local/bin/steamcmd.sh +quit

RUN mkdir -p /opt/steam
WORKDIR /opt/steam
VOLUME /opt/steam/

ENV HOME /opt/steam
#ADD update.sh /opt/steamgames/
#ADD run.sh /opt/steamgames/
#ADD run_csgo.txt /opt/steamgames/
#ADD install_csgo.txt /opt/steamgames/

EXPOSE 27015/udp

ENTRYPOINT ["/bin/sh"]
