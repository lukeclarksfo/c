build:
	clang -o obj/arraysieve arraysieve.c
	clang -o obj/circularlinkedlist circularlinkedlist.c
	clang -o obj/euclid euclid.c
	clang -o obj/linkedlist linkedlist.c
	clang -o obj/linkedlistbyarrays linkedlistbyarrays.c
	clang -o obj/print print.c
	clang -o obj/stack stack.c

clean:
	rm -f obj/*
	rm -rf *.dSYM/ arraysieve circularlinkedlist \
	euclid linkedlist linkedlistbyarrays print stack