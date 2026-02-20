library(readxl)
#!
dados = read_excel("C:/dados.xlsx", range = "A1:B17", col_names = FALSE)
colnames(dados) = c("Y", "X")
dados$Y = as.numeric(dados$Y)
dados$X = as.numeric(dados$X)
modelo <- lm(Y ~ X, data = dados)
summary(modelo)
cor(dados$X, dados$Y)
#2
dados2 = read_excel("C:/dados.xlsx", range = "D1:Q2", col_names = FALSE)
dados2 = as.data.frame(t(dados2))
colnames(dados2) = c("X", "Y")
dados2$X = as.numeric(dados2$X)
dados2$Y = as.numeric(dados2$Y)

plot(dados2$X, dados2$Y,
     xlab = "Concentração conhecida (X)",
     ylab = "Concentração medida (Y)",
     main = "Diagrama de dispersão - Calibração do instrumento",
     pch = 19, col = "blue")
abline(a = 0, b = 1, col = "red", lwd = 2)
cor(dados$X, dados$Y)
modelo2 <- lm(Y ~ X, data = dados2)
abline(modelo2, col = "green", lwd = 2)
legend("topleft", legend = c("Pontos medidos", "Reta de regressão", "Reta ideal Y=X"),
       col = c("blue", "green", "red"), pch = c(19, NA, NA), lty = c(NA, 1, 2), lwd = c(NA, 2, 2))