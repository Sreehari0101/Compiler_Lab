%{

#include <stdio.h>

%}

%token number

%left '+' '-'

%left '*' '/'

%%

E : T { printf("Result = %d ",$$);
return 0;}

T : T '+' T {$$ = $1 + $3;} |
    T '-' T {$$ = $1 - $3;} |
    T '*' T {$$ = $1 * $3;} |
    T '/' T {$$ = $1 / $3;} |
    '-' T {$$ = -$2;} |
    '+' T {$$ = +$2;} |
    '(' T ')' {$$ = $2;} |
    '-' number {$$ = -$2;} |
    number {$$ = $1;};

%%

int yyerror(){

printf("\nInvalid Expression");
return 0;

}



int main(){

printf("\nEnter the expression : ");
yyparse();
return 0;

} 

    