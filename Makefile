export PATH := bin:$(PATH)

run:
	hugo server

clean:
	rm -rf public

build: clean
	hugo
