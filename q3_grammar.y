%{
	#include<stdio.h>

%}
%token INTEGER
%%

S:E	'\n'	    {printf("Res = %d",$1);};
E: INTEGER  {$$ = $1;};
E: E E '+' 	{$$ = $1+$2;};
E: E E '-' 	{$$ = $1-$2;};
E: E E '*' 	{$$ = $1*$2;};

%%
main()
{
	yyparse();
}
void yyerror(char *s)
{
	//fprintf(stderr,"%s\n",s);
}