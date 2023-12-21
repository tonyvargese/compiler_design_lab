%{
    #include<stdio.h>
    int ch=0,word=1,line=1;
%}
%%
[a-z|A-Z|0-9] {ch++;}
" " {word++;}
[\n] {line++;}
. {}
%%

int main(){
    yyin=fopen("hi.txt","r");
    yylex();
    printf("characters:%d\n",ch);
    printf("words:%d\n",word);
    printf("lines:%d\n",line);
    return 0;

}