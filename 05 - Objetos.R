# Objetos em R

#Vetor
vetor1 <- c(1:10)
vetor1
length(vetor1)
mode(vetor1)
class(vetor1)
typeof(vetor1)

#matriz: possui 2 dimensoes
matriz1 <- matrix(1:10,nrow = 2)
matriz1[,1]
length(matriz1)
mode(matriz1)
class(matriz1)
typeof(matriz1)

#array: possui 2 ou mais dimensoes com apenas um tipo de dado
array1 <- array(1:5,dim = c(3,3,3))
array1
length(array1)
mode(array1)
class(array1)
typeof(array1)

#dataframe: matriz com diferente tipos de dados
View(iris)
length(iris)
mode(iris)
class(iris)
typeof(iris)

# listas: coleção de diferentes objetos
lista1 <- list(a=matriz1,b=vetor1)
lista1
length(lista1)
mode(lista1)
class(lista1)
typeof(lista1)

# funções
func1 <- function(x) {
  var1 <- x*x
  return(var1)
}

func1(5)
class(func1)

# removendo objetos
ls()
objects()
rm(array1, func1)
objects()
