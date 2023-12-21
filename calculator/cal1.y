%{
    #include<stdio.h>
    #include<stdlib.h> 
    #include<string.h>
    int yyparse();
    int result;   
    int yyerror(char *);
%}

%token INTEGER 
%left '+' '-'
%left '*' '/'

%%
Final : expr{result=$$;}
 expr : expr'-'expr {$$=$1-$3;}
      | expr'+'expr {$$=$1+$3;}
      | expr'*'expr {$$=$1*$3;}
      | expr'/'expr {$$=$1/$3;}
      | '-'expr {$$=-$2;}  
      | '('expr')' {$$=$2;}
      | INTEGER {$$=$1;}
      ;
%%

int main(){
    printf("enter the expresion\n");
    yyparse();
    printf("valid\n");
    printf("result,%d",result);
    return 0;

}
int yyerror(char *s){
    printf("invalid expresion");
}