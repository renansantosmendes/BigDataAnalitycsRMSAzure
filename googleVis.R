install.packages('googleVis')
library(googleVis)

df = data.frame(Pais = c('BR','CH','AR'),
                Exportações = c(10,13,14),
                Importações = c(23,12,32))

Line <- gvisLineChart(df)
plot(Line)

Column <- gvisColumnChart(df)
plot(Column)

Pie <- gvisPieChart(df)
plot(Pie)


Combo <- gvisComboChart(df, xvar = "País",
                        yvar = c("Exportações", "Importações"),
                        options = list(seriesType = "bars",
                                       series='{1: {type:"line"}}'))