
%{
#include <stdio.h>
%}

USERDOM [(A-Za-z0-9)(\-\._)?]+
ALPHANUM [A-Za-z0-9]+
%%

{USERDOM}{ALPHANUM}@{USERDOM}/[.] { 
    
    printf("%s\n",yytext); 

} 
{USERDOM}?{ALPHANUM}@{USERDOM}?{ALPHANUM} { 
    
    printf("%s\n",yytext); 

} 
[^ \n\t\r]+ ;
[ \n\t\r]+ ;  

%%


int main() {
  yylex();
  return 0;
}
