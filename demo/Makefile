TARGET	=guichanffdemo
CC		=g++
INCLUDE	=-I./include -I../include
CXXFLAGS=-g -w -O3 $(INCLUDE)
LIBS	=../lib/libguisan.a
LDLIBS	=-lSDL2 -lSDL2_image -lSDL2_ttf -lSDL2_mixer
CPP_SRC	=$(wildcard src/*.cpp) 
CPP_OBJ	=$(patsubst %cpp, %o, $(CPP_SRC))

.PHONY:all clean  
  
all:$(TARGET)

$(TARGET):$(CPP_OBJ)
	$(CC) $(CPP_OBJ) $(LIBS) -o $(TARGET) $(LDLIBS) 


clean:
	rm -rf $(TARGET) $(CPP_OBJ)
