#include<stdio.h>
#include<stdlib.h>
#include<string.h>

int main(){
    int i=0, j=0, n, d=0;
    char input[100], variable='A';
    printf("enter the epression\n");
    scanf("%s",input);
    n=strlen(input);
    for(i=0;i<n;i++){
        for(j=0;j<n;j++){
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
                    input[d]=variable;
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
                    input[d]=variable;
                    input[i]=' ';
                    input[i+1]=' ';
                    variable++;
                    continue;
                }
            }


        }
    }
}