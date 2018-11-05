%{
#include<stdio.h>
#include<stdlib.h>
void yyerror(char *s);
%}

%%
E :	 S		{printf("validated!");};
S : 'a' S 'b'	{};
S :	'b' S 'a'	{};
S :	'c'   {};
%%

main()
{
	yyparse();	
}

void yyerror(char *s)
{
	fprintf(stderr,"%s\n",s);
}