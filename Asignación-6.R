# Sarha Bravo
# 1907306
# 27.04.21
# Ejercicio 1 -------------------------------------------------------------


erupciones <- read.csv("https://raw.githubusercontent.com/Caarolinee/PrincipiosEstadistica2021/main/erupciones.csv")
head(erupciones)

# Diagrama de dispersión 

plot(erupciones, xlab= "Tiempo de espera entre erupciones (min)",
     ylab= "Duración de las erupciones (min)", col= "#660067" )


# Correlación -------------------------------------------------------------

# Media erupciones = 3.48
mean(erupciones$eruptions)

# Desviación estandar erupciones = 1.14
sd(erupciones$eruptions)

# Varianza erupciones = 1.30
var(erupciones$eruptions)

#Media Tiempo = 70.89
mean(erupciones$waiting)

# Desviación estandar Tiempo = 13.59
sd(erupciones$waiting)

# Varianza Tiempo = 184.82
var(erupciones$waiting)

# Correlación 
cor.test(erupciones$eruptions, erupciones$waiting)
# Es significativa

# Regresión lineal  -------------------------------------------------------

summary(erupciones$eruptions)

erupciones.lm <- lm(erupciones$eruptions ~ erupciones$waiting)
erupciones.lm

summary(erupciones.lm)

plot(erupciones$waiting , erupciones$eruptions, xlab="Tiempo de espera entre erupciones (min)", ylab = "Duracion de las erupciones (min)") 
abline(erupciones.lm, col="red")
text(56, 4.5, "Y = -1.874 + 0.075*(x)")

# alfa = -1.87

# beta = 0.075

valores <- c(80, 40, 45, 53, 61)

# Respuestas  con la formula
-1.874 + 0.075*(valores)

-1.874 + 0.075*(80)

-1.874 + 0.075*(40)

-1.874 + 0.075*(45)

-1.874 + 0.075*(53)

-1.874 + 0.075*(61)
