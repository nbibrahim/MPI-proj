EXE = averaging mm 

all: $(EXE)

averaging: averaging.c
	mpicc -o $@ $^ -fopenmp

mm: mm.c
	mpicc -o $@ $^ 

clean:
	rm -rf *.o $(EXE)
