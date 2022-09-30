%{
#include <stdio.h>
%}

%%
[_0123456789]+           printf("NUMBER\n");
[_a-zA-Z][_a-zA-Z0-9]*    printf("WORD\n");
%%
