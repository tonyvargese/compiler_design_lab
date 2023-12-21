%{
    #include<stdio.h>
        
%}
%%
\/\/.* {printf("its a single comment: %s\n",yytext);}
\/\*[^*]*\*[^/]*\/ {printf("its a multiple comment: %s\n",yytext);}
.|\n ;
%%

int main(){
    yyin=fopen("q1.txt", "r");
    yylex();
    return 0;
}