%{
#include<stdio.h>
%}
special [)|~|!|@|#|$|%|^|&|*|(|_|-|+]
alpha [a-zA-Z]
dig [0-9]
key dtype|call|write|begin|end
%%
{key} printf("%s Keyword",yytext);
({alpha}|{dig})+ printf("%s Identifier\n",yytext);
{special}+  printf("%s is Special Char ", yytext);
{dig}		printf("%s is Integer Constant ", yytext);
{dig}+\.{dig}+		printf("%s is a Decimal constant\n",yytext);
%%
int main()
{
yylex();
return 0;
}
int yywrap()
{
}
