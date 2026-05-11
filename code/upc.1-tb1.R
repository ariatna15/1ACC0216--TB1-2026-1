rm(list=ls(all=TRUE))
graphics.off()
cat("\014")

setwd("C:/Users/VICENTE/Documents/UPC/DatasetsR")

datos<-read.csv("hotel_bookings.csv", header = TRUE, stringsAsFactors = FALSE)

View(datos)

head(datos)
summary(datos)
str(datos)
dim(datos)
names(datos)

colSums(is.na(datos))

datos$children[is.na(datos$children)] <- median(datos$children, na.rm = TRUE)
boxplot(datos$adr)

Q1 <- quantile(datos$adr, 0.25) 
Q3 <- quantile(datos$adr, 0.75)
IQR <- Q3 - Q1

limite_inferior <- Q1 - 1.5 * IQR
limite_superior <- Q3 + 1.5 * IQR

write.csv(datos, "hotel_bookings_limpio.csv", row.names = FALSE)

no_canceladas <- subset(datos, is_canceled == 0)

library(dplyr)

#Primera pregunta
ggplot(no_canceladas, aes(x = hotel)) +
  geom_bar(fill = "tomato") +
  labs(title = "Reservas no canceladas por tipo de hotel",
       x = "Tipo de hotel",
       y = "Cantidad de reservas") +
  theme_minimal()

#Segunda pregunta
Sys.setlocale("LC_TIME", "English")

datos$fecha_llegada <- as.Date(paste(datos$arrival_date_year, 
                                     datos$arrival_date_month, 
                                     datos$arrival_date_day_of_month), 
                               format = "%Y %B %d")

reservas_tiempo <- datos%>%
  group_by(fecha_llegada) %>%
  summarise(total_reservas = n())

ggplot(reservas_tiempo, aes(x = fecha_llegada, y = total_reservas)) +
  geom_line(color = "blue") +
  labs(title = "Demanda de reservas a lo largo del tiempo",
       x = "Fecha",
       y = "Cantidad de reservas")


#Tercera pregunta
datos$arrival_date_month <- factor(datos$arrival_date_month, 
                                   levels = c("January", "February", "March", "April", "May", "June", 
                                              "July", "August", "September", "October", "November", "December"))

ggplot(datos, aes(x = arrival_date_month)) +
  geom_bar(fill = "orange") +
  labs(title = "Reservas por mes",
       x = "Mes",
       y = "Cantidad de reservas")


#Cuarta pregunta
#creacion duración total
datos$duracion_total <- datos$stays_in_weekend_nights + datos$stays_in_week_nights

# calcular promedio por hotel
promedio_estadia <- datos %>%
  group_by(hotel) %>%
  summarise(promedio = mean(duracion_total))

#crear gráfico
ggplot(promedio_estadia, aes(x = hotel, y = promedio, fill = hotel)) +
  geom_bar(stat = "identity") +
  labs(title = "Duración promedio de estadías por tipo de hotel",
       x = "Tipo de hotel",
       y = "Promedio de noches")


#Quinta pregunta
#creacion de tiene ninos
datos$tiene_ninos <- datos$children > 0 | datos$babies > 0

#grafico
ggplot(datos, aes(x = tiene_ninos, fill = tiene_ninos)) +
  geom_bar() + 
  labs(title = "Reservas que incluyen niños y/o bebés",
       x = "Cantidad niños o bebés",
       y = "Cantidad de reservas") +
  theme_minimal()

#para ver el numero exacto
table(datos$tiene_ninos)

#Sexta Pregunta
ggplot(datos, aes(x = factor(required_car_parking_spaces))) +
  geom_bar(fill = "darkgreen") +
  labs(title = "Importancia de espacios de estacionamiento",
       x = "Espacios de estacionamiento",
       y = "Cantidad de reservas") +
  theme_minimal()

#Septima pregunta
#contar cancelaciones por mes
cancelaciones_mes <- datos %>%
  filter(is_canceled == 1) %>%
  group_by(arrival_date_month) %>%
  summarise(total_canceladas = n())

#grafico
ggplot(cancelaciones_mes, aes(x = arrival_date_month, y = total_canceladas)) +
  geom_col(fill = "purple") +
  labs(title = "Cancelaciones de reservas por mes",
       x = "Mes",
       y = "Total de cancelaciones") +
  theme_minimal()

#Pregunta de equipo
ggplot(datos, aes(x = "", fill = hotel)) +
  geom_bar() + 
  coord_polar(theta = "y") + 
  labs(title = "Distribución de Reservas por Tipo de Hotel",
       fill = "Hotel")

       
