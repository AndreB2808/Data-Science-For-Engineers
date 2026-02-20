#1 

#a
amostras = sample(seq(10, 20000, by = 10), size = 2000, replace = TRUE)
length(amostras)
#b
mean(amostras)
median(amostras)
moda = table(amostras)
moda
#c
quantile(amostras, probs = 0.25)
quantile(amostras, probs = 0.75)
#d
quantile(amostras, probs = 0.1)
quantile(amostras, probs = 0.75)
quantile(amostras, probs = 0.9)
#e
var(amostras)
#f
sd(amostras)
#g
cv = function(x){coef<-sd(x)/mean(x)*100
return(coef)}
cv(amostras)
#h
require(moments)
curva = skewness(amostras)
if (curva == 0.263) {
  cat("Curva mesocúrtica")
} else if (curva < 0.263) {
  cat("Curva leptocúritca")
} else if (curva > 0.263) {
  cat("Curva platicúrtica")
}
#i
hist(amostras)

#2

#a
amostras = sample(seq(10, 30000, by = 10), size = 3000, replace = TRUE)
length(amostras)
#b
mean(amostras)
median(amostras)
moda = table(amostras)
moda
#c
quantile(amostras, probs = 0.25)
quantile(amostras, probs = 0.75)
#d
quantile(amostras, probs = 0.1)
quantile(amostras, probs = 0.75)
quantile(amostras, probs = 0.9)
#e
var(amostras)
#f
sd(amostras)
#g
cv = function(x){coef<-sd(x)/mean(x)*100
return(coef)}
cv(amostras)
#h
require(moments)
curva = skewness(amostras)
if (curva == 0.263) {
  cat("Curva mesocúrtica")
} else if (curva < 0.263) {
  cat("Curva leptocúritca")
} else if (curva > 0.263) {
  cat("Curva platicúrtica")
}
#i
hist(amostras)

#3

#a
dados <- c(37,38,40,45,48,50,52,55,58,60,60,60,60,61,61,63,64,64,64,65,65,66,66,68,68,70,72,72,72,72,75,77,78,79,80,85,90,92,95,98)
length(dados)
#b
mean(dados)
median(dados)
moda = table(dados)
moda
#c
quantile(dados, probs = 0.25)
quantile(dados, probs = 0.75)
#d
quantile(dados, probs = 0.1)
quantile(dados, probs = 0.75)
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
if (curva == 0.263) {
  cat("Curva mesocúrtica")
} else if (curva < 0.263) {
  cat("Curva leptocúritca")
} else if (curva > 0.263) {
  cat("Curva platicúrtica")
}
#i
hist(dados)

#4

#a
valores = read_excel("C:/valores_4.xlsx", col_names = FALSE)
valores = as.vector(as.matrix(dados))
length(valores)
#b
mean(valores)
median(valores)
moda = table(valores)
moda
#c
quantile(valores, probs = 0.25)
quantile(valores, probs = 0.75)
#d
quantile(valores, probs = 0.1)
quantile(valores, probs = 0.75)
quantile(valores, probs = 0.9)
#e
var(valores)
#f
sd(valores)
#g
cv = function(x){coef<-sd(x)/mean(x)*100
return(coef)}
cv(valores)
#h
require(moments)
curva = skewness(valores)
if (curva == 0.263) {
  cat("Curva mesocúrtica")
} else if (curva < 0.263) {
  cat("Curva leptocúritca")
} else if (curva > 0.263) {
  cat("Curva platicúrtica")
}
#i
hist(valores)