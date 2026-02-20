a = 1
b = 3
if (a > b){
  a
}else{
  b
}
x = 64
ifelse(x>0,sqrt(x),"Não existe!")
y = 53
ifelse(y>0,"Positivo","Negativo")
for(i in 1:10){
    print(i^3)
}

dados = c(10,15,80,21,22,37)
n = length(dados)
soma = 0
for(i in 1:n){
  soma = dados[i] + soma
}
media = soma / n
media

fibo = 0
fibo[1] = 1
fibo[2] = 1
for(i in 3:30){
  fibo[i] = fibo[i-1] + fibo[i-2]
}

temps = data.frame(Temp = c(27,19,12,35,37,22,14))
temps$Nivel = 0
for(i in 1:7){
  ifelse(temps[i,1] < 15, temps[i,2] <- "Baixa",
  ifelse(temps[i,1] < 25, temps[i,2] <- "Média",
  temps[i,2] <- "Elevada"))
}

# Exercicio 1 2 3 4

a = 3
b = 2
c = 1
if (a!=b & b!=c & c!=a){
  print("Escaleno")
}else{
  if (a==b & b==c & c==a){
    print("Isósceles")
  }else{
    print("Equilátero")
  }
}

# Exercicio 5

dados = c(10, 15, 23, 47, 92, 9, 7, 6, 12, 10, 15, 23, 47, 92, 9, 7, 6, 12, 17, 54, 89, 78)
n = length(dados)
soma = 0
for(i in 1:n){
  soma = dados[i] + soma
}
media = soma / n
media

dados = c(110, 115, 231, 147, 92, 119, 117, 126, 102, 123, 145, 123, 122, 102)
n = length(dados)
soma = 0
for(i in 1:n){
  soma = dados[i] + soma
}
media = soma / n
media

dados = c(10, 18, 21, 49, 82, 99, 77, 86, 102, 100, 105, 123, 147, 92, 119, 107, 106, 102, 117, 54, 89, 78, 110, 115, 231, 147, 92, 119, 117, 126, 102, 123, 145, 123, 122, 102, 15, 23, 47, 92, 9, 7, 6, 12, 17, 54, 89, 78, 110, 115, 231, 147, 92, 119, 117, 126, 102, 119, 117, 126, 102, 123, 145, 123, 122, 102, 15, 23)
n = length(dados)
soma = 0
for(i in 1:n){
  soma = dados[i] + soma
}
media = soma / n
media

# Exercicio 6

temps = data.frame(Temp = c(27,39,52,85,137,182,214))
temps$Nivel = 0
for(i in 1:7){
  ifelse(temps[i,1] < 99, temps[i,2] <- "Baixa",
         ifelse(temps[i,1] < 200, temps[i,2] <- "Média",
                temps[i,2] <- "Elevada"))
}

# Exercicio 7

amostras = c(28, 6, 17, 48, 63, 47, 27, 21, 3, 7, 12, 39, 50, 54, 33, 45, 15, 24, 1, 7, 36, 53, 46, 27, 5, 10, 32, 50, 52, 11, 42, 22, 3, 17, 34, 56, 25, 2, 30, 10, 33, 1, 49, 13, 16,8,31,21,6,9,2, 11, 32, 25,0,55, 23, 41, 29, 4, 51, 1, 6, 31,5,5, 11, 4, 10, 26, 12, 6, 16,8,2,4,28)
m = length(amostras)
k = ceiling(1 + log2(n))
min = min(amostras)
max = max(amostras)
amp = max - min
h = amp / k
h = round(h)
soma = 0
for(i in 1:m){
  soma = amostras[i] + soma
}
media = soma / m
