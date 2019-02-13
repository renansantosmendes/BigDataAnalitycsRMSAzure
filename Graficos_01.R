# gráficos em R

search()
demo('graphics')

x = 5:7
y = 8:10

plot(x,y)

altura <- c(145,167, 176, 123,150)
largura <- c(51,63,64,40, 55)
plot(altura,largura)


plot(lynx)
plot(lynx, ylab='Plots com Dataframes', xlab='')
plot(lynx, ylab='Plots com Dataframes', xlab='Observações')
plot(lynx, main='Plots com Dataframes', col='red')
plot(lynx, main='Plots com Dataframes', col.main ='red')
plot(lynx, main='Plots com Dataframes', col.main ='red', cex.main = 1.5)

library(datasets)
hist(warpbreaks$breaks)

airquality
transform(airquality, Month =factor(Month))
boxplot(Ozone ~Month, airquality, xlab = 'Month', ylab='Ozone (ppb)')

par()
par('pch')
par('lty')

x = 2:4
plot(x, pch='c')
par(mfrow = c(2,2), col.axis = "red")
plot(1:8, las = 0, xlab = "xlab", ylab = "ylab", main = "LAS = 0")
plot(1:8, las = 1, xlab = "xlab", ylab = "ylab", main = "LAS = 1")
plot(1:8, las = 2, xlab = "xlab", ylab = "ylab", main = "LAS = 2")
plot(1:8, las = 3, xlab = "xlab", ylab = "ylab", main = "LAS = 3")
legend("topright", pch = 1, col = c("blue", "red"), legend = c("Var1","Var2"))
par(mfrow = c(1,1))

# Cores disponíveis
colors()

# Salvando os gráficos

# png
png("Grafico1.png", width = 500, height = 500, res = 72)

plot(iris$Sepal.Length, iris$Petal.Length,
     col = iris$Species,
     main = "Gráfico gerado a partir do Iris")

dev.off()

