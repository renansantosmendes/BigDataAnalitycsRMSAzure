hoje <- Sys.Date()
hoje
class(hoje)
Sys.time()
Sys.timezone()

as.Date('2019-02-11')
as.Date('Jun-28-18',format = '%b-%d-%y')
as.Date('28 Junho, 2018',format = '%d %B, %Y')

# convertendo a data do sistema
Sys.Date()
format(Sys.Date(),format = '%d %B %Y')
format(Sys.Date(),format = 'Hoje eh %A')

# adicionando valores
hoje + 1
my_time <- Sys.time()
my_time + 1

# diferença entre datas
hoje - as.Date(my_time) #necessario conversão para obter diferença

#install.packages('lubridate')
library('lubridate')
ymd('20190802')
