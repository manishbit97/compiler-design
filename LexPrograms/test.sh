/usr/bin/lex $1
if [ "$#" -eq 1 ]; then
    /usr/bin/gcc lex.yy.c
    ./a.out
else 
	/usr/bin/gcc lex.yy.c -o $2
	./$2
fi
