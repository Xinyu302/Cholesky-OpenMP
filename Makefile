BIN_DIR=../bin
PROGRAM=$(BIN_DIR)/cholesky-tsk-dep
PROGRAM_PRIORITY=$(BIN_DIR)/cholesky-tsk-prio

MKL_HOME=/opt/intel/oneapi/mkl/2023.2.0

CC=gcc
CFLAGS=-O3 -std=gnu99 -I$(MKL_HOME)/include -fopenmp
LDFLAGS=-L$(MKL_HOME)/lib/intel64 -lmkl_sequential -lmkl_core -lmkl_rt -lpthread -lm -fopenmp
#VERBOSE=-DVERBOSE

all: $(PROGRAM) $(PROGRAM_PRIORITY)

$(PROGRAM): cholesky-solved.c 
	$(CC) $(CFLAGS) $(VERBOSE) -o $@ $^ $(LDFLAGS)

$(PROGRAM_PRIORITY): cholesky-solved-priority.c 
	$(CC) $(CFLAGS) $(VERBOSE) -o $@ $^ $(LDFLAGS)

$(BIN_DIR): 
	mkdir $@

clean:
	rm -rf $(PROGRAM) $(PROGRAM_PRIORITY) *.o

wipe: clean
	rm -rf *.out *.err
