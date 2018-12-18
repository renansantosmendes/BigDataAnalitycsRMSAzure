#Revisão e aprofundamento

#interagindo com o so
getwd()
list.files()
.Platform$OS.type
.Platform$file.sep
Sys.Date()
Sys.info()
R.version
?system
system('ls -a')

# Criando um vetor
vec1 <- c(12,3,4,19,34)
vec1

# criando uma matriz
dados <- c(1:50)
mat1 <- matrix(dados,nrow=10, ncol=5, byrow=T)
mat1

#comparando vetores e matrizes
vec1 > 10
vec1 > 20
mat1 > 20

#ordenando elementos
a <- c(100, 10, 1000)
order(a)
a[order(a)]

#slicing
mat1[1:3, 2:4]
