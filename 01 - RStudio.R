# Explorando o RStudio

# nome dos contribuidores
contributors()

# licença
license()

# informações sobre a seção
sessionInfo()

# imprimir informações
print('R - uma das principais ferramentas do cientista de dados')

# plot de gráficos
plot(1:30)
hist(rnorm(50000))

# instalação de pacotes
install.packages('ggplot2')
install.packages('randomForest')

# carregar pacote
library(ggplot2)

# descarregar pacote
detach(package:ggplot2)

# se souber o nome da funçao
help(mean)
?mean

# se nao souber o nome da funçao
??mean
help.search("matplot")
