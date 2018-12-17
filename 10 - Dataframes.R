# Dataframe
# criando um dataframe
df <- data.frame()
class(df)
df

#criando vetores vazios
nomes <- character()
idades <- numeric()
datas <- as.Date(character())
codigos <- integer()

df <- data.frame(c(nomes,idades,datas,codigos))
df

# criando vetores
pais = c('EUA','Dinamarca','Holanda','Espanha','Brasil')
nome = c('Mauricio','Pedro','Aline','Beatriz','Marta')
altura = c(1.7,1.7,1.6,1.5,1.6)
codigo = c(51,52,53,54,55)

# criando um dataframe
pesquisa <- data.frame(pais, nome, altura, codigo)
pesquisa

# adicionando um novo vetor a um dataframe
olhos = c('verde','verde','azul','castanho','azul')
pesq = cbind(pesquisa,olhos)
pesq

# informações sobre o dataframe
str(pesq)
dim(pesq)
length(pesq)

#obtendo um vetor
pesq$pais
pesq$nome

#extraindo um unico valor
pesq[1,1]
pesq[3,2]

#numero de linhas e colunas
nrow(pesq)
ncol(pesq)

#primeiros elementos do dataframe
head(pesq)
head(mtcars)

#ultimos elementos do dataframe
tail(pesq)
tail(mtcars)

# filtro para um subset de dados que atendem a um criterio
pesq[altura < 1.6, ]
pesq[altura < 1.6, c('codigo','olhos')]

#dataframes nomeados
names(pesq) <- c('Pais','Nome','Altura','Codigo','Olhos')
pesq

colnames(pesq) <- c('V1','V2','V3','V4','V4')
rownames(pesq) <- c('O1','O2','O3','O4','O5')
pesq

summary(mtcars$mpg)
plot(mtcars$mpg,mtcars$disp)
