FCFLAGS=-Wall -Werror -O3

all: h1d

clean:
	$(RM) *.o

h1d: \
	hydrus.o \
	hyster.o \
	input.o \
	material.o \
	output.o \
	sink.o \
	solute.o \
	temper.o \
	time.o \
	watflow.o
	$(FC) $(LDFLAGS) -o $@ $^

%.o: %.for
	$(FC) $(FCFLAGS) -c $< -o $@
