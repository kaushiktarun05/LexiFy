%{
int word_count = 0;
%}

%%
[a-zA-Z]+'[a-zA-Z]* { word_count++; }
[a-zA-Z]+ { word_count++; }
. |
[ \t\n]+ {}

%%
int yywrap(){
    return 1;
}
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

    printf("Number of words: %d\n", word_count);

    return 0;
}



