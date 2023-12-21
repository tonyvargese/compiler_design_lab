%{
    #include<stdio.h>    
%}
DIGIT [0-9]+
ID [a-zA-Z][a-zA-Z0-9]*
OP [+-=/<>*]

%%
"if"      {printf("keyword : %s\n",yytext);}
"then"    {printf("keyword : %s\n",yytext);}
"else if" {printf("keyword : %s\n",yytext);}
"for"     {printf("keyword : %s\n",yytext);}
"while"   {printf("keyword : %s\n",yytext);}
{DIGIT}   {printf("numeric : %s\n",yytext);}
{OP}      {printf("operator : %s\n",yytext);}
{ID}      {printf("identifier : %s\n",yytext);} 
.         {printf("special character : %s\n",yytext);}
[ \n\t]   {}
%%

int main(){
    yyin=fopen("q1.txt","r");
    yylex();
}
