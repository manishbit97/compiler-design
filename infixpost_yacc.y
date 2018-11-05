%{
	#include<stdio.h>

%}
%token INTEGER
%%

S:E		    {}
E: E '+' T 	{printf("+");};
E: E '-' T 	{printf("-");};
E: T 		{};
T: T '*' F	{printf("*");};
T: T '/' F	{printf("/");};
T: F		{};
F: INTEGER       {printf("%d",$1);};

%%
main()
{
	yyparse();
}
void yyerror(char *s)
{
	//fprintf(stderr,"%s\n",s);
}