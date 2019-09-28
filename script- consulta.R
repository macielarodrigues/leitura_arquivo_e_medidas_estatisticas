### Leitura de arquivo e Medidas estatísticas

## Leitura de arquivo

# comando na forma geral, tanto para read.csv quanto para read.csv2

# read.csv(file="local onde o arquivo csv se encontra no computador", sep="separador de colunas")

########

#Você deve ter o arquivo csv no seu computador.
#Use o comando abaixo para fornecer o local do

local <- choose.files() #escolha o arquivo csv, este comando funciona no sistema windows.
local

dados1 <- read.csv2(file=local)

dados2 <- read.csv(file=local,sep=";")

dados1

dados2

#Lendo o arquivo direto da internet

dados3 <- read.csv2(file="http://www.estatisticacomr.uff.br/wp-content/uploads/2015/07/acidentes.csv")
dados3

##Exercícios 

#1.Consulte os elementos de dados3 cuja idade seja maior que 35

#2.Quais elementos de dados3 cuja variável sexo seja f?

#3.Acrescente uma nova coluna ao data frame, acrescentando 5 à idade de cada elemento.

##Respostas:

#1.
dados3[ , 2][dados3[ ,2]>35]
#ou
dados3$idade[dados3$idade>35]

#2.
dados3$sexo[dados3$sexo=="f"]

#3.
dados3[,5] = dados3[,2]+5
dados3

## Medidas Estatísticas

# Funções máximo, mínimo e range

# Criando as variáveis

#Vetores

x <- 1:4
x
y <- 5:8
y        

#Matrizes

m <- cbind(x,y)
m

#Função max : Retorna o maior elemento de um conjunto de números

max(x)
max(y)
max(m)

#Função min : Retorna o menor elemento de um conjunto de números

min(x)
min(y)
min(m)

#Função range : Retorna o menor e o maior valor, respectivamente, de um conjunto de números

range(1,3,8,9,15,18)
range(x)
range(y)
range(m)

# Criando novas variáveis

a <- 1:3
b <- 4:6

matriz_A <- cbind(a,b)

# Função média e função mediana : Calcula a média e a mediana dos números

#Média

mean(a)
mean(b)
mean(matriz_A)

#Mediana
median(a)
median(b)
median(c)
median(matriz_A)

# Usando a função apply : aplica a função às linhas ou colunas de uma matriz

# por linha

apply(matriz_A, 1, mean)
apply(matriz_A, 1, median)

# por coluna

apply(matriz_A, 2, mean)
apply(matriz_A, 2, median)

# Funções Variância e Desvio padrão : Calcula a variância e o desvio padrão dos números

Vetor <- c(1:3, 4:6)
Vetor
matriz <- matrix(1:9,3,3)
matriz

var(Vetor)
sqrt(var(Vetor))
sd(Vetor)

apply(matriz, 1, var)
apply(matriz, 1, sd)

# Funções summary e quantile : Faz um resumo de resultados e calcula percentis

summary(Vetor)
quantile(Vetor)
summary(matriz)
quantile(matriz)

# Usando percentis específicos

quantile(Vetor,c(0.15, 0.35, 0.80))
quantile(matriz, c(0.15, 0.35, 0.80))

##Exercícios 

M <- cbind(x1 <- 1:6, x2 <- rep(3,6), x3 <- c(2,2,2,7,7,7))
M

#1.Obtenha o maior e o menor valor da matriz M

#2.Obtenha a média,a mediana, a variância e o desvio padrão por coluna da matriz M

#3.Obtenha os quantis 0.20 e 0.85 e aplique a função summary no vetor P <- 1:100

#4.Repita as operações da questão 2 retirando os dados faltantes para o vetor L <- c(1:15,NA,17:20)


##Respostas:

#1.
range(M)
#2
apply(M,2,mean) #média por coluna
apply(M,2,median) #mediana por coluna
apply(M,2,var) #variância por coluna
apply(M,2,sd) #desvio padrão por coluna

#3.
P <- 1:100
quantile(P,0.20,0.85)
summary(P)

#4.
L <- c(1:15,NA,17:20)
mean(L)
median(L)
var(L, na.rm = T)
sd(L, na.rm = T)
