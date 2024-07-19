%{
#include <stdio.h>
%}

%%
[1-9][0-9][0-9][0-9]    {
                            int num = atoi(yytext);
                            int prev_digit = num % 10;
                            int current_digit;
                            int is_ascending = 1; // Assume ascending order initially
                            num /= 10; // Move to the next digit
                            while (num != 0) {
                                current_digit = num % 10;
                                if (current_digit <= prev_digit) {
                                    prev_digit = current_digit;
                                    num /= 10; // Move to the next digit
                                } else {
                                    is_ascending = 0; // Not in ascending order
                                    break;
                                }
                            }
                            if (is_ascending)
                                printf("%s has digits in ascending order from left to right\n", yytext);
                            else
                                printf("%s does not have digits in ascending order from left to right\n", yytext);
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
