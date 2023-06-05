%option noyywrap
DIGIT [0-9]
%%

{DIGIT}{3}-{DIGIT}{2}-{DIGIT}{5}-{DIGIT}{2}-{DIGIT}{1}   {
    printf("Número de ISBN válido: %s\n", yytext);
}
.   {
    printf("Número de ISBN inválido: %s\n", yytext);
}
%%

void main() {
    yylex();
}
