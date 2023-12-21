%{
    #include<stdio.h>
    int posno=0;
    int negno=0;

%}

%%
\?+[0-9]+ {posno++;}
\?-[0-9]+ {negno++;}
. {}
%%
int main(){
    yyin=fopen("hi.txt","r");
    //printf("enter the number\n");
    yylex();
    printf("positive number count: %d",posno);
    printf("negative number count: %d",negno);
    return 0;

}