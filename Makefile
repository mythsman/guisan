TARGET  = lib/libguisan.a
  
AR      = ar

DIRS	=$(shell find ./src -maxdepth 3 -type d)
SOURCE	= $(foreach dir,$(DIRS),$(wildcard $(dir)/*.cpp))
OBJS    = $(patsubst %.c,%.o,$(patsubst %.cpp,%.o,$(SOURCE)))

INCLUDE	=-I./include  
CFLAGS  = -g -w -O3  $(INCLUDE)
CXXFLAGS= $(CFLAGS)
  
  
.PHONY : all clean
  
$(TARGET) : $(OBJS)
	$(AR) cr $(TARGET) $(OBJS)

all : $(TARGET)
	cd demo&&make all&&cd ..
	cd examples&&make all&&cd ..
  
clean :
	cd demo&&make clean&&cd ..
	cd examples&&make clean&&cd ..
	find . -name *.o |xargs rm -f
	rm -rf $(TARGET)
