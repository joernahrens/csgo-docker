build: prepare
	docker build -t joernahrens/csgo-docker .

prepare:
	mkdir -p games

update: build
	docker run -it --privileged -v `pwd`:/opt/steam joernahrens/csgo-docker ./update.sh

lan: build
	docker run -it --privileged -v `pwd`:/opt/steam joernahrens/csgo-docker ./run.sh

run: build
	docker run -it --privileged -v `pwd`:/opt/steam joernahrens/csgo-docker