load("Dados.Rdata")
data <- dados[[1]]

# Média

media = mean(data)

# Mediana

mediana = median(data)

# Primeiro e terceiro quartis

Q1Q3 = quantile(data, probs = c(0.25, 0.75), type = 2)

# P10 e P90

P10P90 = quantile(data, probs = c(0.10, 0.90), type = 2)

# Variância

variancia = var(data)

# Desvio padrão

desvio = sd(data)

# Coeficiente de variação

cv = function(x){coef<-sd(x)/mean(x)*100
return(coef)}

coeficiente = cv(data)

# ================================================================ #
