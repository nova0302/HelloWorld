CSRCS =$(shell ls *.c)
ODIR =./obj
OBJS =$(addprefix $(ODIR)/, $(CSRCS:.c=.o))
PROGRAM = HelloWorld

$(PROGRAM):$(OBJS)
	gcc -o $@ $^
	@echo CSRCS = $(CSRCS)
	@echo OBJS = $(OBJS)

$(ODIR)/%.o:%.c
	if [ ! -d $(ODIR) ]; then mkdir $(ODIR); fi
	gcc -c $< -o $@
