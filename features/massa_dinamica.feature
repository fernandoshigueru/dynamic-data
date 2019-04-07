#language: pt

Funcionalidade: Utilizar massa de um arquivo csv

@massa
Esquema do Cenário: Utilizar massa de um arquivo csv deletando ao finalizar cenário
Dado que esteja na tela do google
Quando utilizar a massa do csv no search 
  | cpf | <cpf> |
  | id  | <id>  |

  Exemplos:
    | cpf        | id         |
    | $CSV[0][0] | $CSV[0][1] |
    | $CSV[1][0] | $CSV[1][1] |
