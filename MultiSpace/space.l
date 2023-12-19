%{

#include <stdio.h>
#include <ctype.h>
FILE *inputfile,*outputfile;

%}

%%

[ \t]+ {fprintf(outputfile,"%s"," ");}
. {fprintf(outputfile,"%c",yytext[0]);}

%%

int main(){

inputfile = fopen("input.txt","r");
if(!inputfile) {
printf("\nFile not found");
return 0;
}
outputfile = fopen("output.txt","w");
yyin = inputfile;
yylex();

}