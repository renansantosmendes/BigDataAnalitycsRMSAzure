# Vetores
# vetor de caracteres
vetor_caracteres <- c("Olá","DSA")
vetor_caracteres

# vetor de floats
vetor_numerico <- c(3.14, 45.3, 300.5)
vetor_numerico

# vetor de complexos
vetor_complexo <- c(-1 + 1i, 2 -3i)
vetor_complexo

# vetor lógico
vetor_logico <- c(TRUE,FALSE,FALSE)
vetor_logico

# vetor de inteiros
vetor_integer = c(3,4,5,6,7)
vetor_integer

# utilizando seq
vetor1 = seq(1:10)
vetor1
is.vector(vetor1)

# utilizando rep()
vetor2 = rep(1:10)
vetor2
is.vector(vetor2)

# indexação de vetores
a = seq(1:5)
a
a[1]
a[6]

# combinando vetores
v1 = c(3,5,7)
v2 = c("aa","bb","cc","dd","ee")
c(v1,v2)

# Operações com vetores
x = c(1,3,5,7)
y = c(2,4,6,8)

x*5
x + y
x - y
x * y
x / y

# somando vetores com tamanhos diferentes
alfa = c(10,20,30)
beta = c(1,2,3,4,5,6,7,8,9)
alfa + beta

# vetores nomeados
v = c("Barack","Obama")
v
names(v) = c("Nome","Sobrenome")
v
v["Nome"]
