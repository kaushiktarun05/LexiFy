%{
#include <stdio.h>
%}

%%
.*22.*22.*22.*   printf("String contains three consecutive occurrences of '22'\n");
.*               printf("String does not contain three consecutive occurrences of '22'\n");
%%

int yywrap() {
    return 1; // Indicates that there are no more input buffers
}

int main() {
    yylex();
    return 0;
}
