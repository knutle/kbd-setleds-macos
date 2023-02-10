install:
	make clean
	cp ./build/setleds /usr/local/bin/setleds

clean:
	rm -rf ./build
	make build

build:
	mkdir build > /dev/null
	gcc -Wall -o ./build/setleds main.c -framework Foundation -framework IOKit