%{
#include <stdio.h>
%}

%%
[1-9][0-9][0-9][0-9]    {
                            int num = atoi(yytext);
                            int sum = 0;
                            while (num != 0) {
                                sum += num % 10;
                                num /= 10;
                            }
                            if (sum == 9)
                                printf("Sum of digits in %s is 9\n", yytext);
                            else
                                printf("Sum of digits in %s is not 9\n", yytext);
                        }
.                        printf("Invalid input\n");
%%
int yywrap() {
    return 1; // Indicates that there are no more input buffers
}

int main() {
    yylex();
    return 0;
}
