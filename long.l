%{
	#include<stdio.h>
	#include<stdlib.h>
	int count=0;
	char longest[100];

%}

%%
[a-zA-Z0-9]* {if(yyleng>count){
				count=yyleng;
				strcpy(longest,yytext);
}}
. {}

%%

int main(){
	yyin=fopen("q1.txt","r");
	yylex();
	printf("the longest:%s\n",longest);
	printf("length: %d\n",count);
	return 0;
}