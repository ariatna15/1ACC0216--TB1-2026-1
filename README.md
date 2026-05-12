# 1ACC0216--TB1-2026-1
# Objetivo del proyecto
El objetivo principal de este trabajo es realizar un análisis exploratorio de datos (EDA) integral sobre el conjunto de datos "Hotel Booking Demand" utilizando R y RStudio como herramientas principales de software. Este proceso busca identificar patrones de comportamiento fundamentales mediante la generación de visualizaciones estratégicas y la preparación técnica de la información. Una etapa crítica del desarrollo consiste en el preprocesamiento de los datos, lo que implica la identificación y el tratamiento de ruido incorporado deliberadamente, específicamente valores faltantes (NA) y datos atípicos u outliers.
Asimismo, el análisis se enfoca en detectar tendencias clave dentro de las reservas hoteleras, tales como la fluctuación de las cancelaciones, la identificación de temporadas de alta demanda y la duración promedio de las estancias según el tipo de establecimiento. También se exploran variables específicas sobre el perfil de los huéspedes, incluyendo la presencia de niños o bebés y el requerimiento de espacios de estacionamiento, para construir una comprensión detallada de la demanda actual. Todo esto permite extraer conclusiones iniciales que están debidamente respaldadas por el análisis cuantitativo.

# Integrantes del grupo
• Ariatna Ximena Bravo Torres (U20241C593)

• Mijhail Jean Pierre Quispe Llancay (U20241C515)

• Ryan Mateo Zavaleta Jave (U20231G996)

• Jose Emanuel Amaro Saravia (U20241C247)

# Descripción dataset
El conjunto de datos utilizado se denomina Hotel Booking Demand y contiene información detallada sobre reservas realizadas en dos tipos de establecimientos: un hotel urbano y un hotel tipo resort.

**Registros y variables**: El archivo cuenta con 119,390 filas y 32 columnas.

**Contenido**: Incluye datos sobre la fecha de llegada, la duración de la estancia, el número de dadultos, niños y bebés, el país de origen, el segmento de mercado, el canal de distribución y el estado de la reserva (cancelado o no).

**Periodo**: Los datos corresponden a registros reales de sistemas de gestión hotelera entre julio de 2015 y agosto de 2017.
Para fines académicos, se ha realizado la modificación del ruido del dataset, como valores faltantes (NA) y valores atípicos (outliers).

# Conclusiones
A partir del análisis exploratorio de datos (EDA) realizado sobre el dataset Hotel Booking Demand, se presentan las siguientes conclusiones: 

**•¿Qué patrones o tendencias se observaron?**

Se identificó una preferencia por los hoteles urbanos al notar una mayor cantidad de reservas no canceladas a comparación con el hotel resort, lo que indica preferencia por establecimientos ubicados en esa zona. 

Las reservas no son iguales durante todo el año, tienden a subir o bajar bastante dependiendo del mes, lo que indica que los hoteles tienen temporadas altas y bajas que podrían servir para un mejor análisis interno. 

Existe una diferencia en la duración promedio de las reservas. El Resort Hotel tiene mayor duración que las de City Hotel. 

La mayoría de las reservas corresponden a adultos que viajan sin niños ni bebés, lo que define el cliente principal solo adultos.  

El requerimiento de espacios de estacionamiento es mínimo dado que los registros la mayoría no ocupa alguno, entonces no es determinante para la elección del hotel. 

Los meses que tienen un mayor volumen de reservas también presentan un mayor número de cancelaciones, como en el caso del mes de agosto. 

 

**•¿Qué recomendaciones se pueden extraer a partir de los hallazgos?**

Dado que City Hotel tiene mayor volumen, se recomienda enfocar las campañas comerciales en atraer clientes hacia el Resort Hotel durante temporadas bajas. 

Dado a los meses de alta demanda que también obtienen mayores reservas canceladas, podría aplicarse una política para una cancelación más estricta y no de último momento para reducir el impacto financiero y la gestión. 

Al analizar que familias o clientes suelen viajar sin niños, podría ofrecerse paquetes que sean como promociones para captar ese público también. 

Se necesita una buena organización y personal para tiempos o meses de mayor demanda. 
