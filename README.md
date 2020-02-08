# Dockerized CS:GO

## Prerequisites

- Docker
- Make

## Configure

Generate a token for game 730 (CS:GO): https://steamcommunity.com/dev/managegameservers

Create the file `.env` and set `STEAMACCOUNT=$THETOKEN`.

## Commands

`$ make update`

Update the server (this might take a long time)

`$ make lan`

Start the CS:GO server in LAN mode. You can configure anything locally, since the game files are in this directory after a successful installation.
