%{
	#include "stdlib.h"
	#include "y.tab.h"
	int yylval;
%}
DIGIT [0-9]
LETTER [A-Za-z]
USCORE [_]
KW int|float|char|double
SPCL [\,]
SPCL1 [\;]
AC [ \t]
IDEN	{LETTER}*|({LETTER}{DIGIT})+

%%
{KW}	{printf("%s",yytext);return KW;}
{IDEN}	{printf("%s",yytext);return ID;}
{SPCL}	{printf("%s",yytext);return COM;}
{SPCL1}	{printf("%s",yytext);return SEMI;}
{AC}	{};
.	printf("%s=invalid character\n",yytext);
%%
yywrap()
{	

}
