%{
#include <stdio.h>
#include <string.h>
%}

%option noyywrap

%%
"if"    { printf("%s", "IF"); }
"else"  { printf("%s", "ELSE"); }
"while" { printf("%s", "WHILE"); }
"for"   { printf("%s", "FOR"); }
"int"   { printf("%s", "INT"); }
"float" { printf("%s", "FLOAT"); }
"double" { printf("%s", "DOUBLE"); }
"char"  { printf("%s", "CHAR"); }
"return" { printf("%s", "RETURN"); }
[ \t]   { printf("%s", yytext); }
\n      { printf("\n"); }
.       { printf("%s", yytext); }

%%

int main(int argc, char *argv[]) {
    if (argc != 2) {
        fprintf(stderr, "Usage: %s <input_file>\n", argv[0]);
        return 1;
    }

    FILE *file = fopen(argv[1], "r");
    if (file == NULL) {
        fprintf(stderr, "Error: Could not open file %s\n", argv[1]);
        return 1;
    }

    yyin = file;
    yylex();

    fclose(file);

    return 0;
}
