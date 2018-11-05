%{
	#include<stdio.h>

%}
%token INTEGER
%%

S:E	'\n'    ;
E: T {} A1 	;
A1: '+' T {printf("+");} A1 ;
A1: '-' T {printf("-");} A1 ;
A1:

T:F {} A2;
A2: '*' F {printf("*");} A2;
A2: '/' F {printf("/");} A2;
A2:

F: INTEGER       {printf("%d",$1);};

%%
main()
{
	yyparse();
}
void yyerror(char *s)
{
	fprintf(stderr,"%s\n",s);
}