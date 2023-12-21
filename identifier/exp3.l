%{
    #include<stdio.h>
    #include<string.h>
    #include "y.tab.h"    
%}

%%
[0-9]+ {return digit;}
[a-zA-Z][a-zA-Z0-9] {return letter;}
[\n] {return 0;}
. {return yytext[0];}
%%

int yywrap(){
    return 1;
}