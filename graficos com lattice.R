#gráficos com lattice
library(lattice)

#scatter plot
xyplot(data = iris, groups = Species, Sepal.Length ~ Petal.Length)

#barplot
barchart(Class ~ Freq | Sex + Age, data = as.data.frame(Titanic),
         groups = Survived, stack = T, layout = c(4,1),
         auto.key = list(title = 'Dados Titanic', columns = 2))

barchart(Class ~ Freq | Sex + Age, data = as.data.frame(Titanic),
        groups = Survived, stack = T, layout = c(4,1),
        auto.key = list(title = 'Dados Titanic', columns = 2),
        scales = list(x = 'free'))

PetalLength <- equal.count(iris$Petal.Length,4)
PetalLength

#scatterplots
xyplot(Sepal.Length ~ Sepal.Width | PetalLength, data = iris)

xyplot(Sepal.Length ~ Sepal.Width | PetalLength, data = iris,
       panel = function(...) {
         panel.grid(h = -1, v = -1,col.line = 'skyblue')
         panel.xyplot(...)
       })


xyplot(Sepal.Length ~ Sepal.Width | PetalLength, data = iris,
       panel = function(x,y,...) {
         panel.xyplot(x,y,...)
         mylm <- lm(y~x)
         panel.abline(mylm)
       })

#histogramas
histogram(~Sepal.Length | Species, xlab = '',
          data = iris, layout = c(3,1),type = 'density',
          main = 'Histograma Lattice', sub = 'Iris Dataset, Sepal Length')

#distribuição
qqmath(~Sepal.Length | Species, data = iris, distribuition = qunif)
#boxplot
bwplot(Species~Sepal.Length, data = iris)
#violin plot
bwplot(Species~Sepal.Length, data = iris,
       panel = panel.violin)
