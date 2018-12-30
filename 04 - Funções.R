#### Funções
# Help
?sample

args(sample)
args(mean)
args(std)

# Funçoes built-in
abs(-43)
sum(c(1:5))
mean(c(1:5))
round(c(1.1:5.8))
rev(c(1:5)) #reverse -> reverte o conjunto de dados

# Funções dentro de funções
plot(rnorm(100))

# Criando funções
myfunc <- function(x) {x + x}
myfunc(10)
class(myfunc)

myfunc2 <- function(a,b) { 
  valor = a^b 
  print(valor)
}

myfunc2(3,2)

jogando_dados <- function(){
  num <- sample(c(1:6), size = 1)
  num
}

jogando_dados()

# Escopo
print(num)
num <- c(1:6)
num


# Funções sem argumentos
vec1 <- (10:13)
vec2 <- c('a','b','c','d')
vec3 <- c(6.5, 9.2, 11.9, 5.1)

myfunc3 <- function(...){
  df = data.frame(cbind(...))
  print(df)
}

myfunc3(vec1)
myfunc3(vec1,vec2)
myfunc3(vec1,vec2,vec3)