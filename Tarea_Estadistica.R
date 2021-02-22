# Sarha Carolina Bravo Gzz
# 1907306
# Superficie
Pinus <- 3140
Mezquite <- 1453
Encinos <- 450
Teka <- 1200
Juniperos <- 720
Superfice <- c(Pinus, Mezquite, Encinos, Teka, Juniperos)
barplot(Superfice, col = "green", ylab = "superfice", xlab = "Especies",
        main = "Barplot de superficie" )
mean(Superfice)
