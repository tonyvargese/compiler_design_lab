#include<stdio.h>
#include<string.h>
#include<stdlib.h>

char productions[10][20], input[20], stack[20];
int input_ptr, stack_top, no_of_productions;

void main(){
    printf("enter the number of productions\n");
    scanf("%d",no_of_productions);
    printf("enetr the productions\n");
    int i=0;
    for(i=0;i<no_of_productions;i++){
        scanf("%s",productions[i]);

    }
    printf("enter the input string\n");
    scanf("%s",input);

    printf("%-20s%-20s%-20s","stack","input","Action");

    int shift,reduce;
    do{
        if(stack[0]==productions[0][0] && strlen(stack)==1 && input[strlen(input)-1]==' '){
            printf("string accepted\n");
            exit(0);
        }
        for(int i=0;i<no_of_productions;i++){
            reduce=1;
        

        for(int j=stack_top,k=strlen(productions[i])-1;j>=0,k>=2;j--,k--){
            if(stack[j]!=productions[i][j]){
                reduce=0;
                break;
            }
        }
        }
        if(reduce==1){
            int i,j;
            stack[j+1]=productions[i][0];
            stack[j+2]='\0';
            stack_top-=strlen(productions[i])-2-1;
            printf("%-s%-sreduce to%s",stack,input,productions[i]);

        }else{
            if(input[input_ptr]!='\0'){
                shift=1;
                stack_top++;
                stack[stack_top]=input[input_ptr];
                input[input_ptr]='\0';
                input_ptr++;
                printf("%-s%-s%-s",stack,input,"shift");
            }
        }

    }while (shift==1 || reduce==1);
    printf("string rejected\n");
   
    

}