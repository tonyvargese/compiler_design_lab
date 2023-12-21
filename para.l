%{
#include<stdio.h>
int count=0;
%}

%%
[a-z] {}
[A-Z] {}
[0-9] {}
[(] {count++;}
[)] {count--;}
[{] {count++;}
[}] {count--;}
[ + - * / % < > ] {}
[\n] {
  if (count==0)
  printf("Paranthesis matching \n");
  else if(count>0)
  printf("Presence of unmatched left paranthesis");
  else
  printf("Presence of unmatched right paranthesis");}
%%

int main(){
  printf("Enter the expression to be checked");
  yylex();
  }