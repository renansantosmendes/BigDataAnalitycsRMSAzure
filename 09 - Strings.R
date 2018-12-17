# Strings 
texto <- "isso é uma string"
texto

x = as.character(3.14)
x
class(x)

#concatenando
nome = 'Barack';sobrenome = 'Obama'
paste(nome,sobrenome)
cat(nome, sobrenome)

#extraindo parte de uma string
texto <- "isso é uma string"
substr(texto,start=12,stop=17)

# contar numero de caracteres
nchar(texto)

#Capitalizaçao dos chars
tolower('Fazendo Um Teste')
toupper('Fazendo Um Teste')

#usando stringr
library(stringr)

#dividindo uma string
strsplit("Histogramas e elementos de dados", NULL)#sem criterio de divisao
strsplit("Histogramas e elementos de dados", " ")#separando em espaços em branco

# trabalhando com string
string1 <- c('esta é a primeira parte de uma string','esta é a segunda parte')
string2 <- c('teste 1', 'teste 2')

# adicionando duas strings
str_c(c(string1,string2),sep=' ')

# contando ocorrências
str_count(string2, 't')

# localiza primeira e ultima do caracter
str_locate_all(string2,'t')

# substitui primeira ocorrencia na string
str_replace(string2, 't', ' ')

# substitui primeira e ultima ocorrencia na string
str_replace_all(string2, 't', ' ')

# detectando padroes nas strings
string1 <- '23 mai 2000'
string2 <- '1 mai 2000'
padrao <- 'mai 20'
grepl(pattern = padrao,x = string1)

padrao <- 'mai20'
grepl(pattern = padrao,x = string1)

