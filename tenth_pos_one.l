%{
#include <stdio.h>
%}

%%
.*1.{9}$   printf("String has '1' as the 10th symbol from the right end\n");
.*         printf("String does not have '1' as the 10th symbol from the right end\n");
%%

int yywrap() {
    return 1; // Indicates that there are no more input buffers
}

int main() {
    yylex();
    return 0;
}
