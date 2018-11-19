%{
#include<stdio.h>
int kwa =0;
int kwb=0;
%}
spcl    [/]
spcl1    [*]
special [!|@|#|$|%|^|&|*|(|)]
alpha [a-zA-Z]
dig [0-9]
pattern ({alpha}|{dig})
%%
({spcl}{spcl1})({alpha}|{dig}|{special}|[ \n\t])*({spcl1}{spcl}) {}
({alpha}|{dig}|{special})* printf("%s",yytext);
. {}
%%
int yywrap(){}
void main()
{
    yylex();
}