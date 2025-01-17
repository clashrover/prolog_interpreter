RUN:
	ocamlc -c interpretor.ml
	ocamllex lexer.mll 
	ocamlyacc parser.mly 
	ocamlc -c parser.mli
	ocamlc -c lexer.ml
	ocamlc -c parser.ml
	ocamlc -c main.ml
	ocamlc -o main interpretor.cmo lexer.cmo parser.cmo main.cmo
	./main database.pl