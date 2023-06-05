%option noyywrap
DIGIT [0-9]

%%

(\({DIGIT}{2}\)){1}{DIGIT}{4,5}-?{DIGIT}{4}     {
    printf("Número de telefone válido: %s\n", yytext);
}
.   {
    printf("Número de telefone inválido: %s\n", yytext);
}
%%

void main() {
    yylex();
}
