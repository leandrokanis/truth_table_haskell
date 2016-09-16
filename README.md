Truth Table Haskell
==============

Gera tabela verdade para n bits

Exemplo
-------

A função:

`(a or b) and (c or d)`

retorna:

`
a. True | b. True | c. True | d. True = True
a. True | b. True | c. True | d. False = True
a. True | b. True | c. False | d. True = True
a. True | b. True | c. False | d. False = False
a. True | b. False | c. True | d. True = True
a. True | b. False | c. True | d. False = True
a. True | b. False | c. False | d. True = True
a. True | b. False | c. False | d. False = False
a. False | b. True | c. True | d. True = True
a. False | b. True | c. True | d. False = True
a. False | b. True | c. False | d. True = True
a. False | b. True | c. False | d. False = False
a. False | b. False | c. True | d. True = False
a. False | b. False | c. True | d. False = False
a. False | b. False | c. False | d. True = False
a. False | b. False | c. False | d. False = False

`

Uso
---
1. Clone ou baixe o diretório

2. Abra o arquivo main.hs e edite a linha 11, escrevendo o sua função

`(a or b) and (b or c)`

3. No shell, navegue até a pasta

4. Abra o arquivo main.hs com haskell

`$ runhaskell main.hs`

5. Seja feliz =)


Precisamos de você!
-------------------
Quer ajudar? Ótimo!
Dê um fork o diretório e nos ajude a melhorar o código.

**Sugestões são bem-vindas.**

Contato
-------
leandrosustenido@gmail.com
