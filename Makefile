# Makefile flags
CC = g++
SRCDIR = ./src
BUILD_DIR = ./build
PROJECT_NAME = template
# Add flags if needed
CFLAGS = 

.PHONY: build run clean

default:
	$(CC) $(SRCDIR)/*.cpp $(CFLAGS) -o $(BUILD_DIR)/$(PROJECT_NAME) && $(BUILD_DIR)/$(PROJECT_NAME)
init:
	mkdir build src
	touch $(SRCDIR)/main.cpp
build:
	$(CC) $(SRCDIR)/*.cpp $(CFLAGS) -o $(BUILD_DIR)/$(PROJECT_NAME)
run:
	$(BUILD_DIR)/$(PROJECT_NAME)
clean:
	rm $(BUILD_DIR)/*
