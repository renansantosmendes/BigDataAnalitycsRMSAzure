# Listas

#lista de char
lista_caracter = list('A','Bem-vindo','DSA')
lista_caracter

#lista de inteiros
lista_inteiros = list(2,3,4)
lista_inteiros

# listas compostas
lista_composta = list('A',3.0, TRUE)
lista_composta

lista1 <-list(c(1:10),'Maria', rnorm(10))
lista1

#slicing da lista
lista1[1]
lista1[c(1,2)]
lista1[2]
lista1[[2]][1] = 'Monica'
lista1

# listas nomeadas
names(lista1) <- c('inteiros','caracteres','numericos')
lista1

vec_num <- c(1:4)
vec_char <- c('A','B','C','D')

lista2 <- list(Numeros = vec_num, Letras = vec_char)
lista2

length(lista2$Numeros)

# mode dos elementos
mode(lista1$caracteres)
mode(lista1$numericos)

# combinando listas
lista3 <- c(lista1,lista2)
lista3

# converter vetor em lista
v = c(1:3)
v
l = as.list(v)
l
