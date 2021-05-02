
.PHONY: all clean clean_trash

LIBNAME = reverse_lib.a

EXEC = executable

OBJS = main.o \
	reverse.o
	
REG_OBJS = main.o

LIB_OBJS = reverse.o

all: $(LIBNAME) $(EXEC)

clean: 
	$(RM) -f $(LIBNAME)
	$(RM) -f $(OBJS)
	$(RM) -f $(EXEC)
	$(RM) -f $(OBJS:.o=.s)
	
clean_trash: 
	$(RM) -f $(OBJS)
	$(RM) -f $(OBJS:.o=.i)
	$(RM) -f $(OBJS:.o=.s)

vpath %.h include
vpath %.c src

$(OBJS): $(OBJS:.o=.c)
	riscv64-unknown-elf-gcc -c -march=rv32imc -mabi=ilp32 --sysroot=include -B src -O1 $^

$(LIBNAME): $(OBJS)
	riscv64-unknown-elf-ar -rsc $@ $(LIB_OBJS) 
	
$(EXEC): $(LIBNAME) $(REG_OBJS)
	riscv64-unknown-elf-gcc -march=rv32imc -mabi=ilp32 -O1 $(REG_OBJS) $(LIBNAME) -o $(EXEC)
	