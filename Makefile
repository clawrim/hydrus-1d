FCFLAGS=-Wall -Werror -O3

all: h1d

clean:
	$(RM) *.o

h1d: \
	HYDRUS.o \
	HYSTER.o \
	INPUT.o \
	MATERIAL.o \
	OUTPUT.o \
	SINK.o \
	SOLUTE.o \
	TEMPER.o \
	TIME.o \
	WATFLOW.o
	$(FC) $(LDFLAGS) -o $@ $^

%.o: %.FOR
	$(FC) $(FCFLAGS) -c $< -o $@
