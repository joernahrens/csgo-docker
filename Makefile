build: prepare
	docker build -t joernahrens/csgo-docker .

prepare:
	mkdir -p games

update: build
	docker run -it \
          -p 27015:27015/tcp \
          -p 27015:27015/udp \
          --privileged -v `pwd`:/opt/steamhome \
          joernahrens/csgo-docker \
          ./update.sh

lan: build
	docker run -it \
          -p 27015:27015/tcp \
          -p 27015:27015/udp \
          --env-file=.env \
          --privileged -v `pwd`:/opt/steamhome \
          joernahrens/csgo-docker \
          ./run.sh

run: build
	docker run -it \
          -p 27015:27015/tcp \
          -p 27015:27015/udp \
          --env-file=.env \
          --privileged -v `pwd`:/opt/steamhome \
          joernahrens/csgo-docker
