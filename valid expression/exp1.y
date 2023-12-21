%{
#include<stdio.h>
#include<stdlib.h>
int yyparse();
int yyerror(char *);
%}

%token INTEGER IDENTIFIER 
%left '+' '-'                                 
%left '*' '/'

%%
expr: expr'-'expr
    | expr'+'expr   
    | expr'*'expr 
    | expr'/'expr                                    
    | '-'expr
    | '('expr')'
    | INTEGER
    | IDENTIFIER
    ;
%%

int main()
{   
    printf("Enter expression: ");
    yyparse();
    printf("\nExpression is valid\n");
    return 0;
}

int yyerror(char *s)
{
    printf("\nExpression is invalid");
    exit(0);
}
