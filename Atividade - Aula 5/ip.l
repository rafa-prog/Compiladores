%option noyywrap
DIGIT [0-9]
NUMBER ({DIGIT}{1,2}|1{DIGIT}{2}|2[0-4]{DIGIT}|25[0-5])
%%

{NUMBER}\.{NUMBER}\.{NUMBER}\.{NUMBER}    {
    printf("Número de IP válido: %s\n", yytext);
}
.   {
    printf("Número de IP inválido: %s\n", yytext);
}
%%

void main() {
    yylex();
}
