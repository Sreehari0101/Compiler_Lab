%{

 #include <stdio.h>
 int line=0,word=0,ch=0,space=0;

%} 

%%

[^ \t\n]+  {word++; ch=ch+yyleng;}
" " {space++;}
"\t" {space = space + 4;}
"\n" {line++;}

%%

int main(){
yyin = fopen("input.txt","r");
yylex();
printf("line count =%d\n",line);
printf("word count =%d\n",word);
printf("character count =%d\n",ch);
printf("space count =%d\n",space);
}