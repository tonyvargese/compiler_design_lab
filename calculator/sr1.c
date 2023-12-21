#include<stdio.h>
#include<string.h>
#include<stdlib.h>

char productions[10][20], stack[20], input[20];
int production_no, stack_top, input_ptr;

void main(){
    stack_top=-1;
    input_ptr=0;

    printf("enter the number of productions\n");
    scanf("%d", &production_no);

    printf("enter the productions\n");
    int i=0;
    for(i=0;i<production_no;i++){
        scanf("%s",productions[i]); 
    }

    printf("enter the input\n");
    scanf("%s",input);
    printf("%-20s%-20s%-20s","stack", "input", "Actions");
    int shift,reduce;
    

    do{
        shift=0;
        reduce=1;
        
        if(stack[0]==productions[0][0] && strlen(stack)==1 && input[strlen(input)-1]==' '){

            printf("string accepted\n");
            exit(0);
        }
        int i;
        for(i=0;i<production_no;i++){
            reduce=1;
            for(int j=stack_top, k=strlen(productions[i])-1;j>=0, k>=2;j--, k--){
                if(stack[j]!=productions[i][j]){
                    reduce=0;
                    break;
                }
            }
        }
        if(reduce==1){
            int j,k;
            stack[j+1]=productions[i][0];
            stack[j+2]='\0';
            stack_top-=strlen(productions[i])-2-1;
            printf("%-20s%-20sreduce to%s",stack,input,productions[i]);
        }else{
            if(input[input_ptr]!='\0'){
                int input_ptr;
                shift=1;
                stack_top++;
                stack[stack_top]=input[input_ptr];
                stack[stack_top+1]='\0';
                input[input_ptr]=' ';
                input_ptr++;
                printf("%-20s%-20s%-20s\n", stack, input, "Shift");





            }
        }

        

    } while (shift == 1 || reduce == 1);
    

}