%{
#include<stdio.h>
%}
alpha [a-zA-Z]
dig [0-9]
special [!|@|#|$|%|^|&|*|(|)]
yo [*]
yo1 [/]
%%
({yo1}{yo})({alpha}|{dig}|{special}|[ \n\t])*({yo}{yo1}) {}
({alpha}|{dig}|{special})* printf("%s",yytext);
%%
int yywrap(){}
void main()
{
    yylex();
}

