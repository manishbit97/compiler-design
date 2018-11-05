%{
	#include "stdlib.h"
	#include "y.tab.h"
	int yylval;
%}
%%
[a-c]	{return *yytext;}
[\t]	;
.	printf("%s=invalid character\n",yytext);
%%
yywrap()
{	

}
