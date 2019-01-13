### 08 - funções especiais

### unlist -> produz vetor com elementos da lista
lst1 <- list(6, 'b', 15)
lst1
class(lst1)

vec1 <- unlist(lst1)
class(vec1)
vec1

lst2 <- list(v1 = 6, v2 = list(381,2190), v3 = c(30,217))
lst2

unlist(lst2)

mean(unlist(lst2))
round(mean(unlist(lst2)))

# comando do.call aplica uma função a um objeto inteiro
# função apply aplica uma função para cada elemento de um
# objeto (substitui um laço de repetição - sendo mais eficiente)

data <- list()
N <- 100

for (n in 1:N){
  data[[n]] = data.frame(index = n, char = sample(letters,1), z = rnorm(1) )
}

head(data)
do.call(rbind, data)
class(do.call(rbind, data))

y <- list(1:3, 4:6, 7:9)
y

lapply(y, sum) #soma o total para cada elemento
do.call(sum,y) #soma o total de todo objeto

#install.packages('plyr')
library(plyr)

y <- list(1:3, 4:6, 7:9)
y

ldply(y,sum) # é mais performático

#strsplit() -> divide uma string
texto <- 'Data Science Academy'
strsplit(texto, ' ')

texto <- 'Data Science Academy'
strsplit(texto, '')

dates <- c('2018-08-25','2019-01-13','2020-08-22')
temp <- strsplit(dates,'-')
temp
class(temp)

# transformar lista em matriz usando a função unlist
matrix(unlist(temp), ncol = 3, byrow = TRUE)
