#include<stdio.h>
#include<stdlib.h>
#include<string.h>

char string[50];
int error=0,w=0;


void E();
void Edash();
void T();
void Tdash();
void F();

int main(){
    
    printf("emter teh string\n");
    scanf("%s",string);
    E();
    if(error==0 && w==strlen(string)  ){
        printf("sucessful\n");
    }
    else{
        printf("failed\n");
    }
}

void E(){
    T();
    Edash();

}
void Edash(){
    if(string[w]=='+'){
        w++;
        T();
        Edash();


    }
}
 void T(){
    F();
    Tdash();
 }

 void Tdash(){
    if(string[w]=='*'){
        w++;
        F();
        Tdash();
    }
 }

 void F(){
    if(string[w]=='('){
        w++;
        E();
        if(string[w]==')'){
            w++;
        }
        else{error=1;}
    }
    else if(string[w]=='d'){
        w++;
    }
    else {
        error=1;
    }
 }
