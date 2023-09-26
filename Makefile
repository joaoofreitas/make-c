# Makefile flags
CC = gcc
SRCDIR = ./src
BUILD_DIR = ./build
PROJECT_NAME = make-c 

# Add flags if needed
CFLAGS = 

.PHONY: build run clean

default:
	$(CC) $(SRCDIR)/*.c $(CFLAGS) -o $(BUILD_DIR)/$(PROJECT_NAME) && $(BUILD_DIR)/$(PROJECT_NAME)
init:
	mkdir -p build src
	touch $(SRCDIR)/main.c
build:
	$(CC) $(SRCDIR)/*.c $(CFLAGS) -o $(BUILD_DIR)/$(PROJECT_NAME)
run:
	$(BUILD_DIR)/$(PROJECT_NAME)
clean:
	rm $(BUILD_DIR)/*
