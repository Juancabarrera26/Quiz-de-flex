%option noyywrap

%{
#include <stdio.h>
#include <stdlib.h>
int ok = 1;
int seen = 0;
%}

%%
[ \t\r\n]+   { /* ignore whitespace */ }

[+-]?([0-9]+(\.[0-9]*)?|\.[0-9]+)([eE][+-]?[0-9]+)?[ \t\r\n]*[+-][ \t\r\n]*([0-9]+(\.[0-9]*)?|\.[0-9]+)([eE][+-]?[0-9]+)?[ \t\r\n]*[iIjJ]   { if (seen) ok = 0; seen = 1; }

.            { ok = 0; }

<<EOF>>      { if (ok && seen) printf("ACEPTA\n"); else printf("NO ACEPTA\n"); return 0; }
%%

int main(int argc, char **argv)
{
    if (argc != 2) { fprintf(stderr, "Uso: %s archivo.txt\n", argv[0]); return 1; }
    FILE *f = fopen(argv[1], "r");
    if (!f) { perror("No se pudo abrir el archivo"); return 1; }
    yyin = f;
    yylex();
    fclose(f);
    return 0;
}
