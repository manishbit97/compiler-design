%{
#include<stdio.h>
int kw =0;	
%}
special [)|~|!|@|#|$|%|^|&|*|(|_|-|+]
alpha [a-zA-Z]
dig [0-9]
%%
a({alpha}|{dig}|{special})+[b-zB-Z]		printf("not matched");
(a|A)({alpha}|{dig}|{special})+(a|A)  printf("%s String Matched for beg and ending with a \n",yytext);
[b-zB-Z]({alpha}|{dig}|{special})+    printf("Not matched");

%%

int main()
{
yylex();
return 0;
}
int yywrap()
{
}