OPENGLLIB= -lGL
GLEWLIB= -lGLEW
GLFWLIB = -lglfw
LIBS=$(OPENGLLIB) $(GLEWLIB) $(GLFWLIB)
LDFLAGS=-L/usr/local/lib 
CPPFLAGS=-I/usr/local/include -I ./

BIN=./bin
MODEL_BIN = ./bin/project
SRCS=./src/model/model.cpp ./src/model/gl_framework.cpp ./src/model/shader_util.cpp ./src/model/hierarchy_node.cpp
INCLUDES=./src/model/gl_framework.hpp ./src/model/shader_util.hpp ./src/model/model.hpp ./src/model/hierarchy_node.hpp

all: $(MODEL_BIN) 
$(shell mkdir -p $(BIN))

$(MODEL_BIN): $(SRCS) $(INCLUDES)
	g++ $(CPPFLAGS) $(SRCS) -o $(MODEL_BIN) $(LDFLAGS) $(LIBS)

clean:
	rm -f *~ *.o $(MODEL_BIN)
	rmdir $(BIN)
