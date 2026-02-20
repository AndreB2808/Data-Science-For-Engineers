#a
dados = round(runif(1500, 1, 5000))
length(dados)
#b
mean(dados)
median(dados)
moda = table(dados)
moda[moda == max(moda)]
#c
quantile(dados, probs = 0.25)
quantile(dados, probs = 0.75)
#d
quantile(dados, probs = 0.1)
quantile(dados, probs = 0.9)
#e
var(dados)
#f
sd(dados)
#g
cv = function(x){coef<-sd(x)/mean(x)*100
return(coef)}
cv(dados)
#h
require(moments)
curva = skewness(dados)
if (curva == 0) {
  cat("Simetria\n")
} else if (curva < 0) {
  cat("Assimetria negativa\n")
} else if (curva > 0) {
  cat("Assimetria positiva\n")
}
#i
hist(dados)