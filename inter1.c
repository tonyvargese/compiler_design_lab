#include<stdio.h>
#include<string.h>
#include<stdlib.h>

int i=0,j=0,d=0,n;
char input[100],variable='A';

int main(){
    printf("input\n");
    scanf("%s",input);
    n=strlen(input);
    for(i=0;i<n;i++){
        if(input[i]=='*' || input[i]=='\0'){
            d=i-1;
            while(input[d]==' '){
                d--;
            }
            if(d!=i-1){
                printf("%c=%c%c%c\n",variable,input[d],input[i],input[i+1]);
                input[d]=variable;
                input[i]=' ';
                input[i+1]=' ';
                variable++;
                continue;
            }
            else if(d==i-1){
                printf("%c=%c%c%c\n",variable,input[i-1],input[i],input[i+1]);
                input[i-1]=variable;
                input[i]=' ';
                input[i+1]=' ';
                variable++;
                continue;
            }
        }
        else if(input[i]=='+' || input[i]=='-'){
            d=i-1;
            while(input[d]==' '){
                d--;
            }
            if(d!=i-1){
                printf("%c=%c%c%c\n",variable,input[d],input[i],input[i+1]);
                input[d]=variable;
                input[i]=' ';
                input[i+1]=' ';
                variable++;
                continue;
            }
            else if(d==i-1){
                printf("%c=%c%c%c\n",variable,input[i-1],input[i],input[i+1]);
                input[i-1]=variable;
                input[i]=' ';
                input[i+1]=' ';
                variable++;
                continue;
            }
        }
    }
}
