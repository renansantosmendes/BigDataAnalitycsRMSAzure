# Big Data na Prática
install.packages('readr')
installed.packages('data.table')
library(readr)
library(dplyr)
library(ggplot2)
library(scales)
library(data.table)

setwd('/media/renansantos/Windows8_OS/UBUNTU - DSA/01 - Big Data Analytics')
getwd()
system.time(df_teste1 <- read.csv2('temps.csv'))
system.time(df_teste2 <- read.table('temps.csv'))
system.time(df <- fread('GlobalLandTemperaturesByCity.csv'))

# Criando subsets
cidadesBrasil <- subset(df, Country == 'Brazil')
cidadesBrasil <- na.omit(cidadesBrasil)
head(cidadesBrasil)
nrow(df)
nrow(cidadesBrasil)
dim(cidadesBrasil)

# Preparação e Organização
# Convertendo as Datas
cidadesBrasil$dt <- as.POSIXct(cidadesBrasil$dt, format = '%Y-%m-%d')
cidadesBrasil$Month <- month(cidadesBrasil$dt)
cidadesBrasil$Year <- year(cidadesBrasil$dt)

# Carregando os subsets
# Palmas
plm <- subset(cidadesBrasil, City == 'Palmas')
plm <- subset(plm, Year %in% c(1796,1846,1906,1936,1946,1996,2012,2017))

# Curitiba
crt <- subset(cidadesBrasil, City == 'Curitiba')
crt <- subset(crt, Year %in% c(1796,1846,1906,1936,1946,1996,2012,2017))

# Recife
recf <- subset(cidadesBrasil, City == 'Recife')
recf <- subset(recf, Year %in% c(1796,1846,1906,1936,1946,1996,2012,2017))

# Construindo os Plots
p_plm <- ggplot(plm, aes(x = (Month), y = AverageTemperature, color = as.factor(Year))) +
  geom_smooth(se = FALSE, fill = NA, size = 2) +
  theme_light(base_size = 20) +
  xlab('Mês') +
  ylab('Temperatura Média') + 
  ggtitle('Temperatura média ao longo do anos') +
  theme(plot.title = element_text(size = 18))

p_crt <- ggplot(crt, aes(x = (Month), y = AverageTemperature, color = as.factor(Year))) +
  geom_smooth(se = FALSE, fill = NA, size = 2) +
  theme_light(base_size = 20) +
  xlab('Mês') +
  ylab('Temperatura Média') + 
  ggtitle('Temperatura média ao longo do anos') +
  theme(plot.title = element_text(size = 18))

p_recf <- ggplot(recf, aes(x = (Month), y = AverageTemperature, color = as.factor(Year))) +
  geom_smooth(se = FALSE, fill = NA, size = 2) +
  theme_light(base_size = 20) +
  xlab('Mês') +
  ylab('Temperatura Média') + 
  ggtitle('Temperatura média ao longo do anos') +
  theme(plot.title = element_text(size = 18))

# Plotando os gráficos
p_plm
p_crt
p_recf
