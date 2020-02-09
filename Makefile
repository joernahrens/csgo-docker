DEFAULT_PARAM=-it -p 27015:27015/tcp -p 27015:27015/udp --privileged -v `pwd`:/opt/steamhome joernahrens/csgo-docker

build: prepare
	docker build -t joernahrens/csgo-docker .

prepare:
	mkdir -p games

update: build
	docker run $(DEFAULT_PARAM) ./update.sh

lan: build
	docker run $(DEFAULT_PARAM) ./run.sh

run: build
	docker run $(DEFAULT_PARAM)
