%{
#include <stdio.h>
#include <stdbool.h>
%}

%%
[0-9]+\.[0-9]+   printf("Floating point number\n");
[0-9]+            printf("Not a floating point number\n");
.                 printf("Invalid input\n");

%%
int yywrap() {
    return 1; // Indicates that there are no more input buffers
}
int main() {
    char input[100];
    printf("Enter a number: ");
    fgets(input, sizeof(input), stdin);  // Read input from the user
    yylex();  // Perform lexical analysis
    return 0;
}
