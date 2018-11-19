%{
int c = 0;
%}

%%
([0-9])+	{}
[0-9]([A-Za-z])	{c++;}

%%

yywrap() {}

void main()
{
yylex();
printf("No fo lettewr = %d",c);
}
