x = c("A","B","C","C","A","A")
x
tabela = table(x)
tabela

dados = round(runif(1000,10,500))
# Cria a tabela de dados
tabela = table(dados)
# Determinação do elemento que mais se repete
tabela[tabela == max(tabela)]

y = c(2,5,7,89,32)
var(y)
sd(y)

idade = c(25,36,77,12,45,89)
renda = c(1000,1500,2000,1800,500,600)

mean(idade)
mean(renda)

sd(idade)
sd(renda)

cv = function(x){coef<-sd(x)/mean(x)*100
return(coef)}

cv(idade)
cv(renda)

# Primeiro Quartil (25%)

quantile(dados, probs = 0.25)

# Segundo Quartil (50%)

quantile(dados, probs = 0.5)

# Terceiro Quartil (75%)

quantile(dados, probs = 0.75)

# Percentil 10% 

quantile(dados, probs = 0.1)

# Percentil 90% 

quantile(dados, probs = 0.9)

# Assimetria

require(moments)
skewness(dados)

# Exercício 1

amostras = c(37,38,40,45,48,50,52,55,58,60,60,60,60,61,61,63,64,64,64,65,65,66,66,68,68,70,72,72,72,72,75,77,78,79,80,85,90,92,95,98)
#a
mean(amostras)
median(amostras)
moda = table(amostras)
moda
#b
quantile(amostras, probs = 0.25)
quantile(amostras, probs = 0.75)
#c
quantile(amostras, probs = 0.1)
quantile(amostras, probs = 0.9)
#d
var(amostras)
#e
sd(amostras)
#f
cv = function(x){coef<-sd(x)/mean(x)*100
return(coef)}
cv(amostras)
#g
require(moments)
curva = skewness(amostras)
if (curva == 0.263) {
  cat("Curva mesocúrtica")
} else if (curva < 0.263) {
  cat("Curva leptocúritca")
} else if (curva > 0.263) {
  cat("Curva platicúrtica")
}

# Exercício 2

amostras = round(runif(3500,10,500))
#a
mean(amostras)
median(amostras)
moda = table(amostras)
moda
#b
quantile(amostras, probs = 0.25)
quantile(amostras, probs = 0.75)
#c
quantile(amostras, probs = 0.1)
quantile(amostras, probs = 0.9)
#d
var(amostras)
#e
sd(amostras)
#f
cv = function(x){coef<-sd(x)/mean(x)*100
return(coef)}
cv(amostras)
#g
require(moments)
curva = skewness(amostras)
if (curva == 0.263) {
  cat("Curva mesocúrtica")
} else if (curva < 0.263) {
  cat("Curva leptocúritca")
} else if (curva > 0.263) {
  cat("Curva platicúrtica")
}
