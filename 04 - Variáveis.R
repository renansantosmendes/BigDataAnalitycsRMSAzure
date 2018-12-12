# Tipos de dados em R
# criando variáveis
var1 = 367
var1
mode(var1)
help("mode")
sqrt(var1)

var2 = as.integer(var1)
var2
mode(var2)
typeof(var2)
help("typeof")

var3 = c("seg","ter","qua")
var3
mode(var3)

var4 = function(x){x+3}
var4
mode(var4)

#mudando o modo do dado
var5 = as.character(var1)
mode(var5)
# atribuindo valores a objetos
x <- c(4,5,6)
x
c(4,5,6) -> y
y
assign("x",c(1.2,4,-2))
x

# verificando o valor de uma posição especifica
x[1]

# verificar objetos
ls()
objects()

# remover objetos
rm(x)
