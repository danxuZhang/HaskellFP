PROGRAM = HW1

MAIN_SOURCE = main.hs

OTHER_SOURCES = creditcard.hs hanoi.hs

GHC_FLAGS = -O2 -threaded -no-keep-o-files -no-keep-hi-files

HC = ghc

all: $(PROGRAM)

$(PROGRAM):
	$(HC) $(GHC_FLAGS) -o $(PROGRAM) $(MAIN_SOURCE) $(OTHER_SOURCES)

clean:
	rm -f $(PROGRAM)
	rm -f *.hi
	rm -f *.o

