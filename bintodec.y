%{
#include<stdio.h>
#include<stdlib.h>
void yyerror(char *s);
%}

%token ZERO ONE
%%

S: E {printf("\n%d",$$);};
E: E T {  $$=$1*2+$2;	}
E: T {	$$=$1;	};
T:ZERO {	$$=$1;	}
T:ONE {	$$=$1;	 };

%%

int main()
{
while(yyparse());
}


yyerror(char *s)
{
fprintf(stdout,"\n%s",s);
}