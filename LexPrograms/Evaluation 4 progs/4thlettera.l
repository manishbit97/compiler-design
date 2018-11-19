%{
#include<stdio.h>
int kwa =0;
int kwb=0;
%}
special [)|~|!|@|#|$|%|^|&|*|(|_|-|+]
alpha [a-zA-Z]
dig [0-9]
pattern ({alpha}|{dig}|{special})
%%
({alpha}|{dig}|{special})+a({alpha}|{dig}|{special})({alpha}|{dig}|{special})({alpha}|{dig}|{special})|(a{pattern}{pattern}{pattern})	{printf("Valid String Found !!!!");}
%%

int main()
{
yylex();
return 0;
}
int yywrap()
{
}