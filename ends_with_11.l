%{
#include <stdio.h>
%}

%%
.*11$   printf("String ends with '11'\n");
.*      printf("String does not end with '11'\n");
%%

int yywrap() {
    return 1; // Indicates that there are no more input buffers
}

int main() {
    yylex();
    return 0;
}
