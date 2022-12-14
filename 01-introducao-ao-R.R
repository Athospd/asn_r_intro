# INTRODUÇÃO AO R

# Rodando códigos (o R como calculadora) ----------------------------------

# ATALHO para rodar o código: CTRL + ENTER

# adição
1 + 1

# subtração
4 - 2

# multiplicação
2 * 3

# divisão
5 / 3

# potência
4 ^ 2


# Criando objetos/variáveis -----------------------------------------------

# Salvando o valor 1 no objeto "obj"
obj <- 1
obj2 = 1
obj

# Também dizemos 'guardando as saídas' ou 'guardar as saídas'
soma <- 2 + 2
soma


days <- 43 * 30 * 12

1 + 
  
# ATALHO para a <- : ALT (option) - (alt menos)

# O R difencia minúscula de maiúscula!

a <- 5
A <- 42

a
A

# Os nomes devem começar com uma letra. 
# Podem conter letras, números, _ e .

# Permitido

x <- 1
x1 <- 2
objeto <- 3
meu_objeto <- 4
meu.objeto <- 5

# Não permitido

1x <- 1
_objeto <- 2
meu-objeto <- 3

# Estilo de nomes

eu_uso_snake_case
outrasPessoasUsamCamelCase
algumas.pessoas.usam.pontos
E_algumasPoucas.Pessoas_RENUNCIAMconvenções

# Exercícios --------------------------------------------------------------

# 1. Guarde em um objeto chamado "meses" a multiplicacao da sua idade por 12.


# Classes -----------------------------------------------------------------

# Podemos somar dois números
1 + 2

# Não podemos somar duas letras (texto)
"a" + "b"

# Temos que usar a função paste()
paste("a", "b")

##############################
# Use aspas para criar texto #
##############################

# O objeto a, sem aspas
a

# A letra (texto) a, com aspas
"a"
'a'

# Numéricos (numeric)

a <- 10
class(a)

# Caracteres (character, strings)

obj <- "a"
obj2 <- "masculino"

# string é um nome também dado aos characteres

class(obj)
class(obj2)

str(obj)

# lógicos (logical, booleanos)

verdadeiro <- TRUE
falso <- FALSE

# Isso dá erro
# TRUE <- 1

class(verdadeiro)
class(falso)

# Data frames

mtcars
class(mtcars)
str(mtcars)
head(mtcars)
View(mtcars)
names(mtcars)
dim(mtcars)
nrow(mtcars)
ncol(mtcars)

# Vetores -----------------------------------------------------------------

# Vetores são conjuntos indexado de valores

vetor1 <- c(1, 4, 3, 10)
vetor2 <- c("a", "b", "z")

vetor1
vetor2

# Uma maneira fácil de criar um vetor com
# uma sequência de números 
# é utilizar o operador `:`

letters

# Vetor de 1 a 10
1:10

# Vetor de 10 a 1
10:1

# Vetor de -3 a 3
-3:3

# Quando dizemos que vetores são conjuntos indexados, 
# isso quer dizer que cada valor 
# dentro de um vetor tem uma posição

vetor <- c("a", "b", "c", "d")

vetor2 <- vetor[1:3]
vetor2

vetor[1]
vetor[2]
vetor[3]
vetor[4]

vetor[1:3]
vetor[c(2, 3)]
vetor[c(1, 2, 4)]

vetor[c(-1,-3)]

# Um vetor só pode guardar um tipo de objeto e 
# ele terá sempre 
# a mesma classe dos objetos que guarda

vetor1 <- c(1, 5, 3, -10)
vetor2 <- c("a", "b", "c")

class(vetor1)
class(vetor2)

# Se tentarmos misturar duas classes, o R vai apresentar o 
# comportamento conhecido como coerção

vetor <- c(1, 2, "a")
vetor

class(vetor)

class(c(3, "a"))
class(c(TRUE, "a"))
class(c(TRUE, 3))

# corções forçadas por você
as.numeric(c(TRUE, FALSE, FALSE))
as.character(c(TRUE, FALSE, FALSE))

as.logical(c(0, 1, 0))
as.character(c(0, 1, 0))

as.logical(c("TRUE", "FALSE", "0", "1", "OPA"))
as.numeric(c("TRUE", "FALSE", "0", "1", "OPA"))

# Naturalmente, podemos fazer operações matemáticas com vetores

vetor <- c(0, 5, 20, -3)

vetor - 1
vetor / 2
vetor * 10

c(0, 5, 20, -3) + c(1, 1, 1, 1)

# Você também pode fazer operações que envolvem mais de um vetor:

vetor1 <- c(1, 2, 3)
vetor2 <- c(10, 20, 30)

vetor1  + vetor2

vetor1 + c(1, 1, 1, 1)
c(0, 5, 20, -3) + c(1, 1, 1, 1)

# As coisas ficam um pouco confusas quando os dois 
# vetores não tem o mesmo tamanho

vetor1 <- c(1, 2)
vetor2 <- c(10, 20, 30, 40)

vetor1 + vetor2

# Esse comportamento é chamado de reciclagem.

# As coisas ficam um pouco mais confusas quando os comprimentos
# dos vetores não são múltiplos

vetor1 <- c(1, 2, 3)
vetor2 <- c(10, 20, 30, 40, 50)

vetor1 + vetor2

# Exercícios --------------------------------------------------------------

# a. Guarde em um objeto uma sequência de números que comece 
# em 0 e termine em 5.

# b. Use subsetting (ou seja, os []) para fazer o R devolver o 
# primeiro número dessa sequência.
# Em seguida, faça o R devolver o último número da sequência.

# c. Multiplique todos os valores do vetor por -1.

# d. Guarde o resultado em um novo objeto chamado 'result'.

# Comparações lógicas ------------------------------------------------------

# Valores lógicos

# TRUE e FALSE são nomes reservados

TRUE <- 100
FALSE <- 100

# Testes com resultado verdadeiro
1 == 1
"a" == "a"

# Testes com resultado falso
1 == 2
"a" == "b"

if(1 == 1) {
  "opa!"
}

if(1 == 2) {
  "opa2!"
}

x <- 1 
if(x == 1) {
  "opa3!"
}

if(x == 2) {
  "opa4!"
} else {
  "opa5!"
}

if(x == 2) {
  "opa6!"
} else if(x == 1) {
  "opa7!"
} else {
  "opa8!"
}
  
# Diferente
x != 1
x != 2

# Maior
x > 3
x > 1

# Maior ou igual
x >= 3
x >= 1

# Menor 
x < 3
x < 1

# Menor ou igual
x <= 2
x <= 1

# Pertence
x %in% c(1, 2, 3)
"a" %in% c("b", "c")


# Comprações lógicas serão a base dos filtros!

minha_coluna <- c(1, 3, 0, 10, -1, 5, 20)

minha_coluna > 3

minha_coluna[minha_coluna > 3]

minha_coluna[c(FALSE, FALSE, FALSE, TRUE, FALSE, TRUE, TRUE)]

# Exercícios --------------------------------------------------------------

# 1. Escreva um código que devolva apenas os valores maiores
# ou iguais a 10 do vetor abaixo:

vetor <- c(4, 8, 15, 16, 20, 42)



# Valores especiais -------------------------------------------------------
# Existem valores reservados para representar dados faltantes, 
# infinitos, e indefinições matemáticas.

NA   # (Not Available) significa dado faltante/indisponível. 

NaN  # (Not a Number) representa indefinições matemáticas, 
# como 0/0 e log(-1). 
# Um NaN é um NA, mas a recíproca não é verdadeira.

Inf  # (Infinito) é um número muito grande ou o limite matemático, 
# por exemplo, 
# 1/0 e 10^310. Aceita sinal negativo -Inf.

NULL # representa a ausência de objeto.

# Comparações lógicas com valores especiais

c("a", "b", NA)

"a" == NA

idade_ana <- 30
idade_beto <- NA

idade_ana == idade_beto

# As funções is.na(), is.nan(), is.infinite() e is.null() 
# são usadas para testar se um objeto é um desses valores.

x <- NA
is.na(x)

0/0 == NaN
is.nan(0/0)

minha_coluna <- c(1, 2, NA, NA, 5)
is.na(minha_coluna)

minha_coluna[is.na(minha_coluna)]

# ! é o operador negação

!TRUE
!FALSE

!is.na(minha_coluna)
minha_coluna[!is.na(minha_coluna)]

is.nan(NaN)
is.infinite(10^309)
is.null(NULL)

minha_coluna <- c(0, 10, 2, 55, 100)
log_coluna <- log(minha_coluna)
mean(log_coluna)

is.infinite(log_coluna)

# Data frames, o retorno --------------------------------------------------

mtcars

# Selecionando uma coluna do data frame

mtcars$mpg
mtcars$cyl

mtcars[["mpg"]]
mtcars[["cyl"]]

mtcars[[1]]
mtcars[[2]]

mtcars[ , 1]
mtcars[ , 2]

# A classe data frame tem uma características
# especiais: dimensão e nomes

dim(mtcars)
names(mtcars)

vetor <- c(1, 2, 8)
dim(vetor)

matriz <- matrix(1:6, 3, 2)
dim(matriz)

# Subsetting em objetos com 2 dimensões

# Sinxtaxe: data_frame[indice_linha, indice_coluna]

mtcars[1,1]
mtcars[,1]
mtcars[1,]

# Selecionando colunas

mtcars[, c(1, 2)]
mtcars[, c("mpg", "am")]

# Filtrando linhas

mtcars[mtcars$cyl == 4, ]
mtcars[mtcars$mpg > 25, ]
mtcars[mtcars$mpg < median(mtcars$mpg), ]
mtcars[mtcars$carb %% 2 == 0, ]


mtcars$cyl
mtcars$cyl == 4

# Veremos E e OU com mais detalhes na hora do filter() 
mtcars[mtcars$mpg > 25 | mtcars$cyl == 4, ]
mtcars[mtcars$mpg > 25 & mtcars$cyl == 4, ]


# Funções -----------------------------------------------------------------

# Funções são nomes que guardam um código de R. Esse código é
# avaliado quando rodamos uma função.

# a função `c()` foi utilizada para criar vetores;
# a função `class()` foi utilizada para descobrir a classe de um objeto;

# Argumentos

# Argumentos são sempre separados por vírgulas

rnorm(5, 1, 2)
c("a", "b")

# A ordem é importante se você não nomear os argumentos

seq(from = 4, to = 10, by = 2)
seq(4, 10, 2)

seq(by = 2, to = 10, from = 4)
seq(2, 10, 4)

# documentação
?seq
help(seq)

# Funções têm personalidade. Cada uma pode funcionar de um jeito
# diferente das demais.

# Exemplo 1

sum(1, 2)
sum(c(1, 2))

mean(1, 2)
mean(c(1, 2))

# Exemplo 2

mean(c(1, 2, NA))
mean(c(1, 2, NA), na.rm = TRUE)

cor(mtcars$mpg, mtcars$wt)

log(c(3, 5, NA))

# Colunas de data frames são vetores

mean(mtcars$mpg)

# Funções dentro de funções
a <- 1:10
sample(a, 20, replace = TRUE)
log(sample(a, 20, replace = TRUE))
mean(log(sample(a, 20, replace = TRUE)))

# Criando funções ------------------------------------------------
# uma f(x) = a + x*b
f <- function(x) {
  2 + 3 * x
}
f(1:10)

minha_soma <- function(x, y) {
  
  # códigos de R
  # códigos de R
  # códigos de R
  # códigos de R
  
  soma <- x + y
  
  return(soma)
  
}

minha_cola <- function(x, y) {
  paste(x, y)
}

duplica_data_frame <- function(df, empilhar = FALSE) {
  if(empilhar) {
    rbind(df, df)
  } else {
    cbind(df, df)
  }
}

minha_soma(1, 0)
minha_cola(x = "a", y = "b")
duplica_data_frame(mtcars[1:3, 1:3])
duplica_data_frame(mtcars[1:3, 1:3], empilhar = TRUE)

# Exercícios --------------------------------------------------------------

# 1. Use a funcao 'sum' para somar os valores de 1 a 100

# 2. Agora tire a média (mean) dos quadrados (^2) da coluna mtcars$mpg.



# for e while -------------------------------------------------------------
for(i in c(1,2,3)) {
  print(i)
}

for(i in letters) {
  print(i)
}

for(col in mtcars) {
  legal <- mean(col)^2
  
  muito_legal <- legal + 2
}

# Pacotes -----------------------------------------------------------------

# Para instalar pacotes

install.packages("tidyverse")
install.packages(c("rmarkdown", "knitr","skimr", "readxl", "writexl",
                   "openxlsx", "DBI", "RSQLite", "RMariaDB", "dbplyr",
                   "haven"))


# Para carregar pacotes

library(tidyverse)
library(dplyr)

# Também é possível acessar as funções usando ::

dplyr::select()





