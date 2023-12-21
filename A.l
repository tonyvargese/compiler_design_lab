%{
#include <stdio.h>
int count = 0;
%}

%%
[Aa][a-zA-Z]* {
    count++;
}
.|\n {} // Ignore other characters

%%
int yywrap(){
    return 1;
}

int main() {
    yyin = fopen("q1.txt", "r");
   
    yylex();
    printf("Count of words starting with 'A': %d\n", count);
    return 0;
}
