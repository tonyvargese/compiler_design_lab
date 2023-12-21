%{
#include<stdio.h>
#include<string.h>
int count = 0;
char longest[50];
int longest_length = 0; // To store the length of the longest word
%}

%%
[A-Za-z0-9]+ {
    if (yyleng > longest_length) { // Compare length
        longest_length = yyleng; // Update longest length
        strcpy(longest, yytext); // Copy longest word
    }
}
%%

int yywrap() {
    return 1;
}

int main() {
    yyin = fopen("q1.txt", "r");
    yylex();
    printf("Longest word: %s\n", longest);
    printf("Length of the longest word: %d\n", longest_length);
    return 0;
}
