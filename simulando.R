library(readxl)

# Limpar ambiente de trabalho para evitar dados antigos
rm(list = ls())

# Ler o arquivo Excel
dados = read_excel("C:/Users/Pichau/Desktop/simulando.xlsx", col_names = TRUE)

# Converter para numérico e remover valores NA
dados$X = as.numeric(dados$X)
dados$Y = as.numeric(dados$Y)
dados = na.omit(dados)

# (a) Construir diagrama de dispersão para calibração do instrumento
pdf("C:/Users/Pichau/Desktop/diagrama_dispersao.pdf")
plot(x = dados$X, y = dados$Y,
     main = "Calibração do Instrumento", 
     xlab = "Concentração Conhecida", 
     ylab = "Concentração Medida pelo Instrumento",
     pch = 16,
     col = "red",
     cex = 1.2)

# Adicionar grid para melhor visualização
grid()

# Adicionar reta de 45° passando pela origem (Y = X)
# Esta reta representa a calibração perfeita
abline(a = 0, b = 1, col = "blue", lwd = 2, lty = 2)

# Adicionar legenda
legend("topleft", 
       legend = c("Dados observados", "Reta ideal (Y = X)"), 
       col = c("red", "blue"), 
       pch = c(16, NA), 
       lty = c(NA, 2),
       lwd = c(NA, 2))

dev.off()

# (c) Calcular o coeficiente de correlação entre X e Y
correlacao = cor(dados$X, dados$Y)
print(paste("Coeficiente de correlação entre X e Y:", round(correlacao, 4)))

# (d) Obter a reta de regressão de Y em função de X
modelo = lm(Y ~ X, data = dados)
intercepto = coef(modelo)[1]
inclinacao = coef(modelo)[2]

print(paste("Reta de regressão: Y =", round(intercepto, 4), "+", round(inclinacao, 4), "* X"))

# Conclusões sobre a eficiência do instrumento
cat("\n=== CONCLUSÕES SOBRE A EFICIÊNCIA DO INSTRUMENTO ===\n")

cat("\nAnálise baseada nos resultados:\n")
cat(paste("- Correlação:", round(correlacao, 4), "\n"))
cat(paste("- Reta de regressão: Y =", round(intercepto, 4), "+", round(inclinacao, 4), "* X\n"))
cat(paste("- Reta ideal seria: Y = 0 + 1 * X\n\n"))

cat("EFICIÊNCIA DO INSTRUMENTO:\n")

# Avaliar correlação
if(abs(correlacao) >= 0.95) {
  cat("✅ CORRELAÇÃO EXCELENTE: Relação muito forte entre valores conhecidos e medidos\n")
} else if(abs(correlacao) >= 0.90) {
  cat("✅ CORRELAÇÃO MUITO BOA: Relação forte e confiável\n")
} else {
  cat("⚠️ CORRELAÇÃO BAIXA: Problemas na precisão do instrumento\n")
}

# Avaliar intercepto
if(abs(intercepto) <= 0.5) {
  cat("✅ INTERCEPTO ADEQUADO: Sem vício constante significativo\n")
} else {
  cat("⚠️ INTERCEPTO ELEVADO: Presença de vício constante\n")
}

# Avaliar inclinação
if(abs(inclinacao - 1) <= 0.1) {
  cat("✅ INCLINAÇÃO IDEAL: Proporção quase perfeita (próxima de 1)\n")
} else {
  cat("⚠️ INCLINAÇÃO INADEQUADA: Desvio da proporção ideal\n")
}

cat("\nCONCLUSÃO FINAL:\n")
if(abs(correlacao) >= 0.95 && abs(intercepto) <= 0.5 && abs(inclinacao - 1) <= 0.1) {
  cat("🎯 INSTRUMENTO MUITO BEM CALIBRADO E EFICIENTE\n")
  cat("   Recomenda-se manter o uso sem necessidade de recalibração\n")
} else if(abs(correlacao) >= 0.90) {
  cat("✅ INSTRUMENTO BEM CALIBRADO\n")
  cat("   Pequenos ajustes podem melhorar a precisão\n")
} else {
  cat("❌ INSTRUMENTO NECESSITA RECALIBRAÇÃO\n")
  cat("   Problemas significativos detectados\n")
}



