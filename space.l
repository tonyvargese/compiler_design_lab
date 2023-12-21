%{
    #include<stdio.h>    
%}

%%
[\t" "]+ {fprintf(yyout," ");}
.|\n {fprintf(yyout,"%s",yytext);}
%%

int main(){
    yyin=fopen("hi.txt","r");
    yyout=fopen("output.txt","w");
    yylex();
    return 0;

}