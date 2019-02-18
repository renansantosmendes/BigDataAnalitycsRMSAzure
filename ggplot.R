 library(ggplot2)
 data(tips, package = 'reshape2')
 View(tips)
 qplot(total_bill, tip, data = tips, geom='point')
 
 #camada 1
 camada1 <- geom_point(
   mapping = aes(x = total_bill, y = tip, color = sex),
   data = tips,
   size = 3
 )
 
 ggplot() + camada1
 
 #camada 1.5
 camada1_5 <- geom_point(
   mapping = aes(x = total_bill, y = tip, color = sex, size = size),
   data = tips
   #,size = 3
 )
 
 ggplot() + camada1_5
 
 #camada 2
modelo_base = lm(tip ~ total_bill, data = tips)
 
modelo_fit <- data.frame(
   total_bill = tips$total_bill,
   predict(modelo_base,interval='confidence')
 )
 
head(modelo_fit)

camada2 <- geom_line(
  mapping = aes(x = total_bill, y=fit),
  data = modelo_fit,
  color = 'darkred'
)
ggplot() + camada1 + camada2

# camada 3

camada3 <- geom_ribbon(
  mapping = aes(x = total_bill, ymin = lwr, ymax = upr),
  data = modelo_fit,
  alpha = 0.3
)

ggplot() + camada1 + camada2 + camada3

#versão otimizada
ggplot(tips, aes(x = total_bill, y = tip)) + 
       geom_point(aes(color = sex)) +
       geom_smooth(method = 'lm')

#gravando o gráfico em um objeto
myplot <- ggplot(tips, aes(x = total_bill, y = tip)) + 
  geom_point(aes(color = sex)) +
  geom_smooth(method = 'lm')

class(myplot)
print(myplot)


#scatter plot com regressão
data = data.frame(cond = rep(c('obs 1', 'obs 2'), each = 10), 
                  var1 = 1:100 + rnorm(100, sd = 9),
                  var2 = 1:100 + rnorm(100, sd = 16)
)

ggplot(data, aes(x = var1, y = var2)) + 
  geom_point(shape = 1) +
  geom_smooth(method = lm, color = 'red', se = FALSE)


data = data.frame(grupo = c('A','B','C','D'),
  valor = c(33,62,56,67),
  num_obs = c(100,500,459,342)
)

#gerando massa de dados
data$right = cumsum(data$num_obs) + 30 * c(0:(nrow(data) - 1))
data$left = data$right - data$num_obs

#plot
ggplot(data, aes(ymin = 0)) +
  geom_rect(aes(xmin = left, xmax = right,
                ymax = valor, color = grupo, fill = grupo)) + 
                xlab('Número de observações') + ylab('Valor')

#usando mtcars
head(mtcars)
ggplot(data = mtcars,aes(x = disp, y = mpg)) + geom_point()

#mapeando cor dos pontos
ggplot(data = mtcars,aes(x = disp, y = mpg, color = cyl)) + geom_point()

#mapeando cor dos pontos e tamanho
ggplot(data = mtcars,aes(x = disp, y = mpg, color = cyl, size = wt)) + geom_point()

#geoms definem qual gráfico é gerado
ggplot(data = mtcars,aes(x = as.factor(cyl), y = mpg)) + geom_boxplot()

#histogramas
ggplot(data = mtcars, aes(x = mpg), binwidth = 30) + geom_histogram()

#barplot
ggplot(data = mtcars,aes(x = as.factor(cyl))) + geom_bar()

#personalizar graficos
ggplot(data = mtcars, aes(x = as.factor(cyl), y = mpg,
                          color = as.factor(cyl))) + geom_boxplot()

ggplot(data = mtcars, aes(x = as.factor(cyl), y = mpg,
                          fill = as.factor(cyl))) + geom_boxplot()

ggplot(data = mtcars, aes(x = as.factor(cyl), y = mpg
                          )) + geom_boxplot(color = 'blue', fill='seagreen4')


ggplot(data = mtcars, aes(x = mpg)) + geom_histogram() +
  xlab('MIlhas por galao') + ylab('Frequencia')


ggplot(data = mtcars,aes(x = as.factor(cyl), fill = as.factor(cyl))) +
  geom_bar() + 
  labs(fill = 'cyl')

ggplot(data = mtcars,aes(x = as.factor(cyl), fill = as.factor(cyl))) +
  geom_bar() + 
  labs(fill = 'cyl')+
  theme(legend.position = 'top')


#usando facets
ggplot(data = mtcars,aes(x = mpg,y= disp, colour = as.factor(cyl))) +
  geom_point() + 
  facet_grid(am~.)
 
ggplot(data = mtcars,aes(x = mpg,y= disp, colour = as.factor(cyl))) +
  geom_point() + 
  facet_grid(.~am)

#plots diferentes juntos
library(gridExtra)
data("diamonds")

plot1 <- qplot(price, data = diamonds, binwidth = 1000)
plot2 <- qplot(carat, price, data = diamonds, colour = cut)

grid.arrange(plot1, plot2, ncol = 1)


#graficos de densidade
ggplot(data = diamonds, aes(x = price, group = cut, fill = cut)) +
    geom_density(adjust = 1.5)

ggplot(data = diamonds, aes(x = price, group = cut, fill = cut)) +
  geom_density(adjust = 1.5, alpha = 0.2)

ggplot(data = diamonds, aes(x = price, group = cut, fill = cut)) +
  geom_density(adjust = 1.5, position ='fill')

#ajuste no reshape
#install.packages('plotly')
library(reshape2)
library(plotly)

sp <- ggplot(tips, aes(x = total_bill, y = tip/total_bill))+
  geom_point(shape = 1)
sp + facet_grid(sex ~.)
ggplotly()

sp + facet_grid(.~sex)
ggplotly()

sp + facet_wrap(~ day, ncol = 2)
ggplotly()

ggplot(mpg, aes(displ, hwy)) + geom_point() + facet_wrap(~manufacturer)
ggplotly()