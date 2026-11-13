.PHONY: all clean install FORCE

PREFIX  ?= /usr/local
BINDIR  ?= $(PREFIX)/bin

CXX      ?= g++
CXXFLAGS ?= -O2 -Wall -Wextra

all: asdcontrol

asdcontrol: asdcontrol.cpp
	$(CXX) $(CXXFLAGS) asdcontrol.cpp -o asdcontrol

debug: asdcontrol.cpp FORCE
	$(CXX) -Og -g asdcontrol.cpp -o asdcontrol

clean:
	rm -f asdcontrol

install: asdcontrol
	install -Dm755 asdcontrol $(DESTDIR)$(BINDIR)/asdcontrol

FORCE:
