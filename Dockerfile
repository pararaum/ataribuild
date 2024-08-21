FROM ubuntu:latest

RUN apt-get -y update && apt-get -y upgrade

RUN apt-get -y install software-properties-common
RUN add-apt-repository ppa:vriviere/mintelf
RUN apt-get -y install gosu
RUN apt-get -y install cross-mintelf-essential
RUN apt-get -y install cflib-m68k-atari-mintelf \
	gemma-m68k-atari-mintelf \
	ldg-m68k-atari-mintelf \
	sdl-m68k-atari-mintelf \
	pkgconf-m68k-atari-mintelf \
	ncurses-m68k-atari-mintelf \
	readline-m68k-atari-mintelf \
	openssl-m68k-atari-mintelf \
	zlib-m68k-atari-mintelf \
	zstd-m68k-atari-mintelf \
	gmp-m68k-atari-mintelf \
	mpfr-m68k-atari-mintelf \
	expat-m68k-atari-mintelf

COPY  files/entrypoint.sh  /dockcross/

WORKDIR /work

ENTRYPOINT ["/dockcross/entrypoint.sh"]
