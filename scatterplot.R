#Plots
set.seed(67)
x = rnorm(10,5,7)
y = rpois(10,7)
z = rnorm(10,6,7)
t = rpois(10,9)

plot(x,y, col = 123,pch = 10,main='Multi Scatterplot',
     col.main = 'red',cex.main = 1.5, xlab= 'variável independente',
     ylab = 'variável dependente')

#adiciona outros pontos
points(z,t, col='blue',pch=4)
points(y,t, col=777, pch = 9)

#cria legenda
legend(-6,5.9,legend = c('Nivel 1', 'Nivel 2', 'Nivel 3'),
       col=c(123,'blue',777), pch= c(10,4,9), cex = 0.65, bty = 'n')

#boxplot
attach(sleep)

sleepboxplot <- boxplot(data = sleep, extra ~ group, main = 'Duração do sono',
                        col.main = 'red', ylab = 'Horas', xlab = 'Droga')

medias = by(extra, group, mean)

points(medias, col='red')

#horizontal boxplot
horizontalboxplot <- boxplot(data = sleep, extra ~ group, main = 'Duração do sono',
                        col.main = 'red', ylab = 'Horas', xlab = 'Droga', horizontal = T)

horizontalboxplot <- boxplot(data = sleep, extra ~ group, main = 'Duração do sono',
                             col.main = 'red', ylab = 'Horas', xlab = 'Droga',
                             horizontal = T, col = c('red','blue'))


#histograma
dados = cars$speed
hist(dados)
dados
hist(dados,breaks = 10,main = 'histograma das velocidades')
hist(dados,labels = T, breaks = c(0.5,10,20,30),main = 'histograma das velocidades')
hist(dados,labels = T, breaks = 10, main = 'histograma das velocidades')
hist(dados,labels = T, ylim=c(0,10) ,main = 'histograma das velocidades')

grafico <- hist(dados, breaks = 10,main='Histograma das velocidades')

xaxis = seq(min(dados), max(dados), length = 10)
yaxis = dnorm(xaxis,mean = mean(dados), sd = sd(dados))
yaxis = yaxis*diff(grafico$mids)*length(dados)

lines(xaxis,yaxis,col = 'red')

#barplot
dados <- matrix(c(652,1537,598,242,36,46,38,21,218,327,106,67), nrow = 3, byrow = T)
dados

# Nomeando linhas e colunas na matriz
colnames(dados) <- c("0","1-150","151-300",">300")
rownames(dados) <- c("Jovem","Adulto","Idoso")
dados

# Construindo o Barplot
barplot(dados, beside = T)
barplot(dados)

legend('topright', pch = 1, legend = c('Jovem', 'Adulto', 'Idoso'))


#piechart
# Criando as fatias
fatias = c(40, 20, 40)

paises <- c('Brasil', 'Argentina', 'Chile')
paises <- paste(paises, fatias)
paises <- paste(paises,'%',sep='')
pie(fatias,labels = paises,
    col = c('darksalmon','gainsboro', 'lemonchiffon4'),
    main ='Dsitribuição de Vendas')

attach(iris)

Values = table(Species)
labels = paste(names(Values))
pie(Values,labels = labels, main = 'Distribuição de Espécies')

#install.packages('plotrix')
library(plotrix)

pie3D(fatias, labels = paises,explode = 0.05,
      col = c('steelblue1','tomato2','tan3'),
      main = 'Distribuição de Vendas')
