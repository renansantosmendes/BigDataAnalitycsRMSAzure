# Matrizes
# Criando matrizes
# número de linhas
matrix(c(1,2,3,4,5,6), nr = 2) # deve ter numero par de valores
matrix(c(1,2,3,4,5,6), nr = 3)
matrix(c(1,2,3,4,5,6), nr = 6)

# número de colunas
matrix(c(1,2,3,4,5,6), nc = 2)
matrix(c(1,2,3,4,5,6), nc = 3)
matrix(c(1,2,3,4,5,6), nc = 6)

# deve ter numero par de valores
matrix(c(1,2,3,4,5), nr = 2)

# help
?matrix

# criando matriz a partir de vetores
meus_dados <- c(1:10)
matrix(data = meus_dados,nrow=5,ncol = 2,byrow = T)
matrix(data = meus_dados,nrow=5,ncol = 2)

# fatiando a matriz
mat <- matrix(c(2,3,4,5),nr = 2)
mat
mat[1,2]
mat[2,2]
mat[,2]

# criando matriz diagonal
matriz = 1:3
diag(matriz)

# extraindo vetor de uma matriz diagonal
vetor = diag(matriz)
diag(vetor)

# tranpondo uma matriz
W <- matrix(c(2,4,8,12),nr=2,nc=2)
W
t(W)
U <- t(W)
U

# obtendo uma matriz inversa
solve(W)

# operações com matrizes
mat1 <- matrix(c(2,3,4,5),nr=2)
mat2 <- matrix(c(6,7,8,9),nr=2)

mat1 + mat2
mat1 - mat2
mat1 * mat2
mat1 / mat2

# multiplicação por vetor
x = c(1:4)
x
y <- matrix(c(2,3,4,5),nr = 2)
y
x*y


# combinando matrizes
# concatenda dados - baseado em colunas
cbind(mat1,mat2)
# append dados - baseado em linhas
rbind(mat1,mat2)
