%{
    #include<stdio.h>

%}

%%
[\/\/.*] {printf("single comment:%s",yytext);}
[\/\*[^*]*\*[^/]*\/] {printf("multiple comment:%s",yytext);}
%%

int main(){
  yyin=fopen("q1.txt","r");
  yylex();
  return 0;
}

int yywrap(){
  return 1;
}