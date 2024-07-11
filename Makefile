CLANG=clang

build: $(SRC)
	${CLANG} -o obj/arraysieve arraysieve.c
	${CLANG} -o obj/circularlinkedlist circularlinkedlist.c
	${CLANG} -o obj/euclid euclid.c
	${CLANG} -o obj/linkedlist linkedlist.c
	${CLANG} -o obj/linkedlistbyarrays linkedlistbyarrays.c
	${CLANG} -o obj/print print.c
	${CLANG} -o obj/stack stack.c
	${CLANG} -o obj/stackpostfix stackpostfix.c
	${CLANG} -o obj/stackpostfixeval stackpostfixeval.c

# Not all c files listed for build step

clean:
	rm -rf obj/* \
	*.dSYM/ \
	$$(basename -s .c *.c)