#regresion lineal


#colesterol x glucemia
regresion <- lm(datos[,"RestingBP"]~datos[,"Cholesterol"])
summary(regresion)
plot(datos[,"Cholesterol"],datos[,"RestingBP"],
     xlab="Colesterol",ylab="Nivel de azucar")
abline(regresion)
summary(regresion)

#colesterol x ritmo cardiaco
regresion <- lm(datos[,"MaxHR"]~datos[,"Cholesterol"])
summary(regresion)
plot(datos[,"Cholesterol"],datos[,"MaxHR"],
     xlab="Colesterol",ylab="Ritmo cardiaco")
abline(regresion)
summary(regresion)

#colesterol x edad
regresion <- lm(datos[,"Age"]~datos[,"Cholesterol"])
summary(regresion)
plot(datos[,"Cholesterol"],datos[,"Age"],
     xlab="Colesterol",ylab="Edad")
abline(regresion)
summary(regresion)
