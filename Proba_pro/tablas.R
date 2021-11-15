#Tablas

#Relacion colesterol-edad
plot(x = heart$Cholesterol, y = heart$Age,
     main = "Nivel de colesterol con respecto a la edad",
     xlab = "Colesterol (mm/dl)", ylab = "Edad (años)")

#relacion sexo-colesterol
boxplot(heart$Cholesterol ~ heart$Sex,
        xlab = "Genero (F:femenino, M:masculino)",
        ylab = "Nivel de colesterol (mm/dl)",
        main = "Boxplot género con respecto a los resultados en Colesterol",
        col = c("lightpink", "cyan"))

#Tipos de dolor de pecho
frecuencia <- freq(heart[3]) 
#Buscar la frecuencia de cada tipo de dolor de pecho que aparecen en la base de datos 

xhelp <- as.factor(c("TA","NAP","ATA","ASY"))
#Tipos de dolor de pecho
yhelp <- c(38,157,160,317)
#Valores que aparecieron en la frecuencia
prom <- round(yhelp/sum(yhelp)*100)
#Procentaje de los valores
ahelp <- paste(xhelp,prom)
phelp <- paste(ahelp,"%",sep="")
#Etiqueta con el tipo de dolo de pecho y sus porcentajes

pie(yhelp,labels =phelp, main= "Dolor de pecho y su frecuencia en la población")

#Relacion presion arterial-edad
plot(x = heart$Age, y = heart$RestingBP, type= "h",
     xlab = "Edad (años)", ylab = "Presión arterial (mmHg)",
     main = "Relación presión arterial y edad de la población")

