%{

#include <stdio.h>

%}

%%

("+")?[0-9]+ {printf("\n It is a positive number");}
"-"[0-9]+ {printf("\n It is a negative number");}
[a-zA-Z][a-zA-Z0-9]+ {printf("\n It is an identifier");}
. {printf("\n Error\n"); 
   return 0;}

%%

int main(){

printf("\nEnter a number: ");
yylex();
return 0;

}