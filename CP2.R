dados = c(37,60,65,75,38,60,66,77,40,60,66,78,45,61,68,79,48,61,68,80,50,63,70,85,52,64,72,90,55,64,72,92,58,64,72,95,60,65,72,98)
n = length(dados)

# Média
soma = 0
for(i in 1:n){
  soma = dados[i] + soma
}
media = soma / n
media

# Mediana

mediana = median(dados)
mediana

# Moda

moda = function(x) {
  freq = table(x)
  freq[freq == max(freq)]
}

moda(dados)

# Primeiro e terceiro quartis

quantile(dados, probs = c(0.25, 0.75), type = 2)

# P10 e P90

quantile(dados, probs = c(0.10, 0.90), type = 2)

# Primeiro segundo e terceiro quartis

quantile(dados, probs = c(0.25, 0.50, 0.75), type = 2)

