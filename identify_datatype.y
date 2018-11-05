%{
#include<stdio.h>
#include<stdlib.h>
void yyerror(char *s);
%}
%token KW ID COM SEMI
%%
S: E S  {printf("Whole prog validated!");}
 |
 ;
E :	 D		{printf("validated!\n");};
D :  T L SEMI	{};
L :	 L COM ID	{};
L :	ID   {};
T : KW	 {};
%%

main()
{
	yyparse();	
}

void yyerror(char *s)
{
	fprintf(stderr,"%s\n",s);
}