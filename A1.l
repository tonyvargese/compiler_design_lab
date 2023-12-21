%{
    #include<stdio.h>  
    int count;  
%}

%%
[Aa][a-zA-Z0-9]* {count++;}
.|\n {}
%%

int main(){
    yyin=fopen("hi.txt","r");
    yylex();
    printf("no of A:%d",count);
    return 0;
}