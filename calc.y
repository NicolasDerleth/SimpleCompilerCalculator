
%{
#include <stdio.h>
#include <stdlib.h>


extern int yylex();
void yyerror(char *msg);
%}

%union{
  float f;
  
	

}



%token <f> ID
%type <f> E F T  

%%

S : E          {printf("%f\n", $1);}
  ;
E : E '+' T    {$$ = $1 + $3;} 
  | E '-' T    {$$ = $1 - $3;}
  | T          {$$ = $1;}
  ;
T : T '*' F    {$$ = $1 * $3;}
  | T '/' F    {$$ = $1 / $3;}
  | F          {$$ = $1;}
  ;
F : '(' E ')'  {$$ = $2;} 
  | '-' F      {$$ = -$2;}
  | ID         {$$ = $1;}
  ;



%%


void yyerror(char *msg){
     fprintf(stderr, "%s\n", msg);
     exit(1);
}

int main(void){
    yyparse();
  
    return 0;
}
