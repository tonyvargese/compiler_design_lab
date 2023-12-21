%{
    #include<stdio.h>   
    int yyerror(char *);
%}

%token digit letter

%%
start : letter s
    s : letter s| digit s|
%%

int main(){
    printf("enter the expression:\n");
    yyparse();
    printf("valid\n");
    return 0;
}

int yyerror(char *s){
    printf("invalid\n");
    exit(0);

}