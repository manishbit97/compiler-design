%{
#include<stdio.h>
int kwa =0,kwb=0;	
%}
%%
a  kwa++;
b   kwb++;
%%

yywrap(){}

main()
{
yylex();
if(kwa%2==0){printf("No of a's is divisible by 2\n");}
else {printf("No of a's is divisible by 2\n");}
if(kwb%2==0){printf("No of a's is divisible by 3\n");}
else {printf("No of a's is divisible by 3\n");}
}
