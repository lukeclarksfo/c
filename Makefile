CLANG=clang

build:
	${CLANG} -o obj/arraysieve arraysieve.c
	${CLANG} -o obj/circularlinkedlist circularlinkedlist.c
	${CLANG} -o obj/euclid euclid.c
	${CLANG} -o obj/linkedlist linkedlist.c
	${CLANG} -o obj/linkedlistbyarrays linkedlistbyarrays.c
	${CLANG} -o obj/print print.c
	${CLANG} -o obj/stack stack.c
	${CLANG} -o obj/stackpostfix stackpostfix.c
	${CLANG} -o obj/stackpostfixeval stackpostfixeval.c

clean:
	rm -rf obj/* \
	*.dSYM/ \
	arraysieve circularlinkedlist \
	euclid linkedlist linkedlistbyarrays print stack \
	stackpostfix stackpostfixeval