library(maps)
library(mapdata)
library(ggplot2)
install.packages('rmaps')

mapa <-map_data('world')
dim(mapa)
View(mapa)

# gerando o mapa
ggplot() + geom_polygon(data = mapa, aes(x=long, y = lat, group = group)) +
  coord_fixed(1,3)


ggplot() + geom_polygon(data = mapa, aes(x=long, y = lat, group = group), fill = NA, color ='blue') 

gg1 <- ggplot() + geom_polygon(data = mapa, aes(x=long, y = lat, group = group), fill = 'seagreen1', color ='blue') 

#marcando pontos no gráfico
labs <- data.frame(
  long = c(69.24140, -2.8456051),
  lat = c(-78.38995, 22.44512),
  names = c('Ponto1', 'Ponto2'),
  stringsAsFactors = FALSE
)

gg1 + 
  geom_point(data=labs, aes(x=long, y=lat, color='black', size = 2)) +
  geom_point(data=labs, aes(x=long, y=lat, color='yellow', size = 2))


ggplot(data = mapa) +
  geom_polygon(aes(x = long, y = lat, fill = region, group = group), color = 'white')+
  guides(fill = FALSE)
