%{
    #include<stdio.h>
    #include<stdlib.h>
    #include<string.h>
    int count=0;
    char longest[50];    
%}

%%
[a-zA-Z0-9]+ {if(yyleng>count){
        count=yyleng;
        strcpy(longest,yytext);
}}
%%
int yywrap(){
    return 1;
}

int main(){
    yyin=fopen("hi.txt","r");
    yylex();
    printf("longest word: %s\n",longest);
    printf("length: %d",count);
}