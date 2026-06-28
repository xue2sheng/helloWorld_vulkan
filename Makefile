CXX = g++
CXXFLAGS = -std=c++23 -Wall -Wextra -O2

# Point directly to the system profile paths where the headers are now linked
INCLUDES = -I/run/current-system/sw/include
LIBS     = -L/run/current-system/sw/lib -lglfw -lvulkan

TARGET = vulkan_wayland_hello
SRCS = main.cpp

all:
	$(CXX) $(CXXFLAGS) $(INCLUDES) $(SRCS) -o $(TARGET) $(LIBS)

clean:
	rm -f $(TARGET)

.PHONY: all clean
