%{
    #include<stdio.h>
    #include<ctype.h>    
%}

%%
[a-z] {printf("%c",toupper(yytext[0]));}
[A-Z] {printf("%c",tolower(yytext[0]));}
%%
int yywrap(){
    return 1;
}

int main(){
    printf("enter he input \n");
    yylex();
    return 1;
}