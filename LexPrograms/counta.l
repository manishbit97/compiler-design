%
{
	int count = 0
%}
%%
a	{count++;}
.	{echo ;}
%%
yywrap()
{}
main()
{
	yylex();
	printf("No of times a occurs = %d",count);
}