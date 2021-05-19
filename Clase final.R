# Sarha Bravo 
# 1907306
# 19.05.21

prod <- read.csv("https://raw.githubusercontent.com/Caarolinee/PrincipiosEstadistica2021/main/mainproduccion.csv")
head(prod)
summary(prod)
is.factor(prod$Tiempo)

boxplot(prod$Kgsem ~ prod$Tiempo, col= "lightgreen")

# Pregunta de investigación 
# Estamos interesados en conocer si la producción en Kg de semillas de los individuos de Pinos es diferentes en el
# año 2012 y 2013

# Hipotesis nula (H0): no existe diferencia entre la prod. en Kg en los años 2012 y 2013 
# Hipotesis alternativa (H1): existe diferencia entre la prod. en Kg de los años 2012 y 2013 
# alfa = 0.05

# Revisar normalidad 
shapiro.test(prod$Kgsem)

# Revisar la homogeneidad de varianza 
var.test(prod$Kgsem ~ prod$Tiempo)

# Prueba de T para muestras dependientes
t.test(prod$Kgsem ~ prod$Tiempo, paired= T)
