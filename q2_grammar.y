%{
#include<stdio.h>
#include<stdlib.h>
void yyerror(char *s);
%}
%token KW ID COM SEMI
%%
E :	 D		{printf("validated!");};
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