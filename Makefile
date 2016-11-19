TARGET  = lib/libguisan.a
  
#compile and lib parameter
AR      = ar
DIRS	=$(shell find ./src -maxdepth 3 -type d)
FILES	= $(foreach dir,$(DIRS),$(wildcard $(dir)/*.cpp))
INCLUDE	=-I./include  
CFLAGS  := -g -w -O3 $(INCLUDE)
CXXFLAGS:= $(CFLAGS)
#i think you should do anything here
  
#source file
SOURCE  = $(FILES)
OBJS    = $(patsubst %.c,%.o,$(patsubst %.cpp,%.o,$(SOURCE)))
  
.PHONY : everything objs clean veryclean rebuild
  
everything : $(TARGET)
  
all : $(TARGET)
	cd demo && make && cd ..
	cd examples && make && cd ..
  
objs : $(OBJS)
  
rebuild: everything
                
clean :
	find . -name *.o |xargs rm -f
	rm -rf $(TARGET)
	cd demo && make clean && cd ..
	cd examples && make clean && cd ..
  
$(TARGET) : $(OBJS)
	$(AR) cr $(TARGET) $(OBJS)

