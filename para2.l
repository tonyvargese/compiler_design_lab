%{
    #include<stdio.h>
    #include<string.h>
    #include<stdlib.h>
    int count=0;
%}  

%%
[(] {count++;}
[)] {count--;}
[{] {count++;}
[}] {count++;}
[a-z] {}
[A-Z] {}
[0-9] {}
[.] {}
[- + < > * / @ # $ % ^ & ] {}
[ \n] {
    if(count==0){
        printf("paranthesis matching");
    }
    else if(count>0){
        printf("right paranthesis not matching");
    }
    else{
        printf("left paranthesis not matching");
    }
    
    
}
%%

int yywrap(){
    return 1;
}
int main(){
    printf("enter the expression\n");
    yylex();

}