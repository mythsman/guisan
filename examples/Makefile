CC		=g++
INCLUDE	=-I../include
CXXFLAGS=-g -w -O3 $(INCLUDE)
LIBS	=../lib/libguisan.a
LDLIBS	=-lSDL2 -lSDL2_image -lSDL2_ttf -lSDL2_mixer

.PHONY:all clean  
  
all	:sdlhelloworld sdlaction sdlwidgets

sdlhelloworld:sdlhelloworld.o
	$(CC) sdlhelloworld.cpp $(LIBS) $(INCLUDE) -o sdlhelloworld $(LDLIBS)

sdlaction:sdlaction.o
	$(CC) sdlaction.cpp $(LIBS) $(INCLUDE) -o sdlaction $(LDLIBS)

sdlwidgets:sdlwidgets.o
	$(CC) sdlwidgets.cpp $(LIBS) $(INCLUDE) -o sdlwidgets $(LDLIBS)

clean:
	rm -rf sdlhelloworld sdlaction sdlwidgets *.o
