TARGET  = lib/libguisan.a
  
#compile and lib parameter
CC      = gcc
AR      = ar
DIRS	=$(shell find ./src -maxdepth 3 -type d)
FILES	= $(foreach dir,$(DIRS),$(wildcard $(dir)/*.cpp))
INCLUDE = -I./include
CFLAGS  = -g -Wall -O3 $(DEFINES) $(INCLUDE)
CXXFLAGS= $(CFLAGS)
  
#i think you should do anything here
  
#source file
SOURCE  = $(FILES)
OBJS    = $(patsubst %.c,%.o,$(patsubst %.cpp,%.o,$(SOURCE)))
  
.PHONY : everything objs clean veryclean rebuild
  
everything : $(TARGET)
  
all : $(TARGET)
  
objs : $(OBJS)
  
rebuild: veryclean everything
                
clean :
	rm -fr *.o
    
veryclean : clean
	rm -fr $(TARGET)
  
$(TARGET) : $(OBJS)
	$(AR) cr $(TARGET) $(OBJS)

