%{
    #include<stdio.h>
    extern int yylval;
    #include "y.tab.h"

%}
%%
[0-9] {yylval=atoi(yytext); return INTEGER;}
.     {return yytext[0];}
[\n]  {return 0;}
%%

int yywrap(){
    return 1;
}