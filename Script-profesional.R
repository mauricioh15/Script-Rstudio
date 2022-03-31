#Proyecto Final Estadística y Probabilidad

#fuente de datos: https://github.com/cienciadedatos/datos-de-miercoles						



#1. Configuración para importación de archivos .xls

#1.1instalación de paquete lector de xls.
install.package("readxl")

#1.2cargar el paquete al software de R.
library(readxl)

#1.3 Ejecutamos función para seleccionar archivo. Esta funcion abrirá
#una ventana windows que nos permite escoger el archivo deseado buscaremos:
#"gapminder_es.csv" y lo abriremos, se ejecutara una linea de codigo en la terminal
#de ahí copiaremos la URL del archivo.
file.choose()

#1.4 Guardamos la ruta en una función llamada: ruta_excel. 
#(Esta ruta es un ejemplo: "C:\\Users\\mehr1\\OneDrive\\Escritorio\\ProyectoRStudio\\gapminder_es.csv")
ruta_excel <- "C:\\Users\\mehr1\\OneDrive\\Escritorio\\ProyectoRStudio\\gapminder_es.xls"

#1.5 Importación de archivo excel.
# finalmente, designamos una variable para la función que lee los datos del documento xls.
america_data <- read_excel(ruta_excel)


# 2. Ejemplo de "distribución uniforme"


#----------------------------------------FALTA------------------------------------------------------------


# 3. Ejemplo de "Distribución triangular"



# 4. Ejemplo de "Distribución normal"

#4.1 definimos una variable que tendra todos los valores de la columna esperanza_de_vida.
esperanza <- america_data$esperanza_de_vida

#4.2definimos una variable de media para nuestros datos, en este caso es la columna esperanza de vida,
#la cual contiene datos de esperanza de vida en 2007 de paises de america. Econtramos la media 
#a traves de una funcion "mean".

media_esperanza <- mean(america_data$esperanza_de_vida)

#4.3 definimos una variable de desviacion para nuestros datos. Econtramos la desviacion a traves de una funcion "sd"

desviacion_esperanza <- sd(america_data$esperanza_de_vida)

#   Colocamos una variable que contenga los datos, media y desviación.
y <- dnorm(esperanza, mean = media_esperanza, sd = desviacion_esperanza)

# Desplegamos el grafico con una función pre-instalada: Plot.
plot(esperanza,y)







