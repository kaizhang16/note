export PATH := bin:$(PATH)

run:
	hugo server

build:
	rm -rf public
	hugo
