./bin/Linux/main: src/main.cpp src/glad.c include/utils.h
	mkdir -p bin/Linux
	g++ -std=c++11 -Wall -Wno-unused-function -g -I ./include/ -o ./bin/Linux/main src/glad.c src/main.cpp ./lib-linux/libglfw3.a -lrt -lm -ldl -lX11 -lpthread -lXrandr -lXinerama -lXxf86vm -lXcursor

./bin/Linux/main-strip: src/main-strip.cpp src/glad.c include/utils.h
	mkdir -p bin/Linux
	g++ -std=c++11 -Wall -Wno-unused-function -g -I ./include/ -o ./bin/Linux/main-strip src/glad.c src/main-strip.cpp ./lib-linux/libglfw3.a -lrt -lm -ldl -lX11 -lpthread -lXrandr -lXinerama -lXxf86vm -lXcursor

./bin/Linux/main-fan: src/main-fan.cpp src/glad.c include/utils.h
	mkdir -p bin/Linux
	g++ -std=c++11 -Wall -Wno-unused-function -g -I ./include/ -o ./bin/Linux/main-fan src/glad.c src/main-fan.cpp ./lib-linux/libglfw3.a -lrt -lm -ldl -lX11 -lpthread -lXrandr -lXinerama -lXxf86vm -lXcursor

./bin/Linux/main-binary: src/main-binary.cpp src/glad.c include/utils.h
	mkdir -p bin/Linux
	g++ -std=c++11 -Wall -Wno-unused-function -g -I ./include/ -o ./bin/Linux/main-binary src/glad.c src/main-binary.cpp ./lib-linux/libglfw3.a -lrt -lm -ldl -lX11 -lpthread -lXrandr -lXinerama -lXxf86vm -lXcursor

.PHONY: clean run
clean:
	rm -f bin/Linux/main
	rm -f bin/Linux/main-strip
	rm -f bin/Linux/main-fan
	rm -f bin/Linux/main-binary

run: ./bin/Linux/main
	cd bin/Linux && ./main

run1: ./bin/Linux/main-fan
	cd bin/Linux && ./main-fan

run2: ./bin/Linux/main-strip
	cd bin/Linux && ./main-strip

run3: ./bin/Linux/main-binary
	cd bin/Linux && ./main-binary