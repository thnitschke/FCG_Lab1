./bin/Linux/main: src/main.cpp src/glad.c include/utils.h
	mkdir -p bin/Linux
	g++ -std=c++11 -Wall -Wno-unused-function -g -I ./include/ -o ./bin/Linux/main src/glad.c src/main.cpp ./lib-linux/libglfw3.a -lrt -lm -ldl -lX11 -lpthread -lXrandr -lXinerama -lXxf86vm -lXcursor

.PHONY: clean run
fan:
	g++ -std=c++11 -Wall -Wno-unused-function -g -I ./include/ -o ./bin/Linux/main-fan src/glad.c src/main-fan.cpp ./lib-linux/libglfw3.a -lrt -lm -ldl -lX11 -lpthread -lXrandr -lXinerama -lXxf86vm -lXcursor

clean:
	rm -f bin/Linux/main

run: ./bin/Linux/main
	cd bin/Linux && ./main

rfan: ./bin/Linux/main
	cd bin/Linux && ./main-fan