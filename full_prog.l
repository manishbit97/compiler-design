%{
#include<stdio.h>
int kw =0;	
%}

DIGIT [0-9]
LETTER [A-Za-z]
USCORE [_]
spcl    [\+\-\*\/\=\{\}\(\)\,\;]
KEYWORD	int|char|float|main|bool|printf|void|getch
IDEN	{LETTER}*|({LETTER}{DIGIT})+


%%

[\"]({LETTER}|{DIGIT}|[ \n\t\r]+)+[\"]	printf("%s is a String  constant\n",yytext);
{KEYWORD}	printf("%s is a Keyword\n",yytext);
{IDEN}		printf("%s is a Identifier\n",yytext);
{spcl}		printf("%s is a special Character\n",yytext);
{DIGIT}		printf("%s is a Integer constant\n",yytext);
{DIGIT}+\.{DIGIT}+		printf("%s is a Decimal constant\n",yytext);
. {printf("Error - Unmatched");}
%%

yywrap() {}

int main()
{
	yylex();
	return 0;
}
