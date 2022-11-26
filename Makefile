CC=gcc 
CFLAGS=-Wall

make: clean
	mkdir ./dist
	g++ -o ./dist/empiot ./source/empiot.cpp ./source/raw_thread.cpp ./source/energy_thread.cpp ./source/stop_conditions.cpp ./source/I2C.cpp ./source/INA219.cpp -lwiringPi -lbcm2835 -lpthread -lrt

clean:
	rm -rf ./dist
	echo Clean done
