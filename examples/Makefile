CC		=g++
INCLUDE	=-I../include
LDFLAGS	=-L../lib
LIBS	=-lSDL2_ttf -lSDL2_mixer -lguisan -lSDL2_image -lSDL2
CFLAGS	=-g -w -O3 $(INCLUDE) $(LDFLAGS)
CXXFLAGS=$(CFLAGS)

.PHONY:all clean  
 
all	:sdlhelloworld sdlaction sdlwidgets

sdlhelloworld:sdlhelloworld.o
	$(CC) $(CXXFLAGS) -o sdlhelloworld sdlhelloworld.o $(LIBS)

sdlaction:sdlaction.o
	$(CC) $(CXXFLAGS) -o sdlaction sdlaction.o $(LIBS)

sdlwidgets:sdlwidgets.o
	$(CC) $(CXXFLAGS) -o sdlwidgets sdlwidgets.o $(LIBS)

clean:
	rm -rf sdlhelloworld sdlaction sdlwidgets *.o
