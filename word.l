%{
#include<stdio.h>
int line=0,word=0,ch=0;
%}

%%
[a-z|A-Z|0-9] {ch++;}
" " {word++;}
[\n] {line++;word++;}
. {}
%%
int yywrap() {
    // In a basic case, returning 1 (indicating end of input) is sufficient
    return 1;
}


int main(int argc,char *argv[]){
  yyin=fopen(argv[1], "r");
  yylex();
  printf("line = %d\n",line);
  printf("character = %d\n", ch);
  printf("word = %d\n",word);
}