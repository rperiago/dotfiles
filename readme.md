# Help do Vim

## Abrindo arquivos

- Abre arquivo na linha 10

'''“vim +10 /caminho/para/o/arquivo”'''

- Abrir o arquivo na linha que contém um determinado padrão 

'''vim +/padrão arquivo'''

- Abrir arquivo com o vim aberto

''':e /home/usuario/arquivo'''


## Insert

"""
i ..... entra no modo de inserção antes do caractere atual
I ..... entra no modo de inserção no começo da linha
a ..... entra no modo de inserção após o caractere atual
A ..... entra no modo de inserção no final da linha
o ..... entra no modo de inserção uma linha abaixo
O ..... entra em modo de inserção uma linha acima

"""

## Delete

"“"
dd .... deleta linha atual
D ..... deleta restante da linha
d$ .... deleta do ponto atual até o final da linha
d^ .... deleta do cursor ao primeiro caractere não-nulo da linha
d0 .... deleta do cursor ao início da linha
x .... apaga o caractere sob o cursor
xp ... troca letras de lugar
ddp .. troca linhas de lugar
d5x .. apaga os próximos 5 caracteres
dd  .. apaga a linha atual
5dd .. apaga 5 linhas (também pode ser: d5d)
d5G .. apaga até a linha 5
dw  .. apaga uma palavra
5dw .. apaga 5 palavras (também pode ser: d5w)
dl  .. apaga uma letra (sinônimo: x)
5dl .. apaga 5 letras (também pode ser: d5l ou 5x)
d0  .. apaga até o início da linha
d^  .. apaga até o primeiro caractere da linha
d$  .. apaga até o final da linha (sinônimo: D)
dgg .. apaga até o início do arquivo
dG  .. apaga até o final do arquivo
D .... apaga o resto da linha
d% ... deleta até o próximo (,[,{
da" .. deleta aspas com conteúdo
diw .. apaga palavra mesmo que não esteja posicionado no início
dip .. apaga o parágrafo atual
d4b .. apaga as quatro palavras anteriores
dfx .. apaga até o próximo ``x''
d/casa/+1 - deleta até a linha após a palavra casa

”""

## Copiar

“""
yy .... copia a linha atual
Y ..... copia a linha atual
ye .... copia do cursor ao fim da palavra
yb .... copia do começo da palavra ao cursor
yy  .... copia a linha atual (sinônimo: Y)
5yy .... copia 5 linhas (também pode ser: y5y ou 5Y)
y/pat .. copia até `pat'
yw  .... copia uma palavra
5yw .... copia 5 palavras (também pode ser: y5w)
yl  .... copia uma letra
5yl .... copia 5 letras (também pode ser: y5l)
y^  .... copia da posição atual até o início da linha(sinônimo: y0)
y$  .... copia da posição atual até o final da linha
ygg .... copia da posição atual até o início do arquivo
yG  .... copia da posição atual até o final do arquivo
yi" .... copia trecho entre aspas (atual - inner)
vip .... seleção visual para parágrafo atual `inner paragraph'
yip .... copia o parágrafo atual
yit .... copia a tag atual `inner tag' útil para arquivos HTML, XML, etc.

""”

## Colar

""“
p .... cola o que foi copiado ou deletado abaixo
P .... cola o que foi copiado ou deletado acima
[p ... cola o que foi copiado ou deletado antes do cursor
]p ... cola o que foi copiado ou deletado após o cursor
""”

## Mudançna

"""
ciw .............. modifica uma palavra
cip .............. modifica um parágrafo
cis .............. modifica uma sentença
C ................ modifica até o final da linha
""”


## Convertendo para maiúsculas
"""
gUU ....... converte a linha para maiúsculo
guu ....... converte a linha para minúsculo
gUiw ...... converte a palavra atual para maiúsculo
~ ......... altera o case do caractere atual
"""

## Desfazer
""“
u ............ desfazer
U ............ desfaz mudanças na última linha editada
Ctrl-r  ...... refazer
”""

## Movendo
'''
:n<Enter>  ..... vai para linha `n'
ngg ............ vai para linha `n'
nG ............. vai para linha `n
gg .... vai para o início do arquivo
G ..... vai para o final do arquivo
0 ..... vai para o início da linha
^ ..... vai para o primeiro caractere da linha (ignora espaços)
$ ..... vai para o final da linha
25gg .. salta para a linha 25
'' .... salta para a linha da última posição em que o cursor estava
fx .... para primeira ocorrência de x
tx .... Para ir para uma letra antes de x
Fx .... Para ir para ocorrência anterior de x
Tx .... Para ir para uma letra após o último x
* ..... Próxima ocorrência de palavra sob o cursor
`' .... salta exatamente para a posição em que o cursor estava
gd .... salta para declaração de variável sob o cursor
gD .... salta para declaração (global) de variável sob o cursor
w ..... move para o início da próxima palavra
W ..... pula para próxima palavra (desconsidera hífens)
E ..... pula para o final da próxima palavra (desconsidera
        hifens)
e ..... move o cursor para o final da próxima palavra
zt .... movo o cursor para o topo da página
zm .... move o cursor para o meio da página
zz .... move a página de modo com que o cursor fique no
        centro
n ..... move o cursor para a próxima ocorrência da busca
N ..... move o cursor para a ocorrência anterior da busca

'''


