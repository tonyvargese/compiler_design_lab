%{
    #include<stdio.h>   
    int yyerror(char *);
%}

%token INTEGER IDENTIFIER
%left '+' '-'
%left '*' '/'

%%
expr : expr'-'expr
     | expr'+'expr
     | expr'*'expr
     | expr'/'expr
     | '-'expr
     | '('expr')'
     | INTEGER
     | IDENTIFIER
     ;
%%

int main(){
    printf("enetr \n");
    yyparse();
    printf("valid\n");
    return 0;
}

int yyerror(char *s){
    printf("invalid\n");
    exit(0);
}
     
