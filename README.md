Generate Yacc Parser:
yacc -d calc.y
This command will generate two files: y.tab.c and y.tab.h. The -d option tells Yacc to produce a header file y.tab.h.

Generate Lex Scanner:
lex calc.l
This command will generate a file named lex.yy.c, which is the C source file for the Lex scanner based on the rules defined in calc.l.


Compile and Link:
cc lex.yy.c y.tab.c -o calc
Here, cc is the C compiler. This command compiles lex.yy.c and y.tab.c and links them into an executable named calc.
Now, you should have an executable named calc that you can run with:

./calc
YACC and LEx must be installed on the machine. 
