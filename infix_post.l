%{
	#include "stdlib.h"
	#include "y.tab.h"
	int yylval;
%}
%%
[0-9]+	{yylval = atoi(yytext);
return INTEGER;}
[-+*/\n]	{return *yytext;}
[\t]	;
.	printf("%s\n",yytext);
%%
yywrap()
{	

}
