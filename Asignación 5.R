# Yulia Ortiz
# 26.04.21

# Ejercicio 2 -------------------------------------------------------------

Suelo <- read.csv("https://raw.githubusercontent.com/Caarolinee/PrincipiosEstadistica2021/main/suelo.csv")

cor.test(Suelo$pH, Suelo$N)

cor.test(Suelo$pH, Suelo$Dens)

cor.test(Suelo$pH, Suelo$P)

cor.test(Suelo$pH, Suelo$Ca)

cor.test(Suelo$pH, Suelo$Mg)

cor.test(Suelo$pH, Suelo$K)

cor.test(Suelo$pH, Suelo$Na)

cor.test(Suelo$pH, Suelo$Conduc)
