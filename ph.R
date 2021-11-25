install.packages('ggplot2')
library(ggplot2)


heart <- read.csv("C:/Users/anaka/Downloads/archive (1)/heart.csv")

#PRUEBA DE HIPOTESIS


#se crea un subset filtrando los datos necesarios para hombres con colesterol y ataques en factores de riesgo.
n1 <- subset(heart$Sex == 'M', heart$Cholesterol >= 200, heart$ChestPainType != 'ASY', heart$ChestPainType != 'NAP')

X1 <- mean(n1) #Se calcula X1 barrita, media muestral 

v1 <- var(n1) #Se calcula la varianza

#se crea un subset filtrando los datos necesarios para mujeres con colesterol y ataques en factores de riesgo.
n2 <- subset(heart$Sex == 'F', heart$Cholesterol >= 200, heart$ChestPainType != 'ASY', heart$ChestPainType != 'NAP')

X2 <- mean(n2) #Se calcula X1 barrita, media muestral 

v2 <- var(n1) #Se calcula la varianza


print(v1)
print(v2)

Sp <- sqrt((542*(0.18664**2) + 48*(0.18664**2))/590) #Calculamos Sp para obtener t
print(Sp)

Tt <- 0.7483 - 0.2516 / 0.186*sqrt(1/543 + 1/49)
print(Tt)