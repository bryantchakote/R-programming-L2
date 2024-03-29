##### 1.2.1.2 Exercice
# Vecteur de 20 entiers pris entre 0 et 20
y = sample(0:20, 20)

# Afficher tous les �l�ments de y
i = 1
for(x in y)
{
  indice = paste('Y[', i, '] =', sep = '')
  cat(indice, x, '\n')
  i = i + 1
}

# Afficher les composantes paires de y
i = 1
j = 1
for(x in y)
{
  if(x %% 2 == 0)
  {
    rang = paste(j, '.', sep = '')
    indice = paste('y[', i, ']', sep = '')
    cat(rang, indice, '=', x, '\n')
    j = j + 1
  }
  i = i + 1
}

##### 1.2.1.3 Exercice
# Afficher les couples d'entiers (n, p) tels que
# 1 <= n, p <= 20 et 7 | (n+p)
entiers = 1:20
i = 1
for(n in entiers)
{
  for(p in entiers)
  {
    if((n + p) %% 7 == 0)
    {
      rang = paste(i, '.', sep = '')
      cat(rang, '(', n, ',', p, ')\n')
      i = i + 1
    }
  }
}

##### 1.2.2.1 Exemple
# Exercice sur la loi binomiale ~ g�ometrique
# Simuler une donn�e de la loi g�ometrique de param�tres (size, prob)
n = 20
X = rep(0, n)
for(i in 1:n)
{
  
}
X = 1
while(rbinom(n = 1, size = 1, prob = 0.3) == 0)
{
  X = X + 1
}
cat('Premier succ�s apr�s', X, 'r�p�titons')

# Simuler n donn�es de la loi g�ometrique de param�tres (size, prob)
n = 20
X = rep(0, n)
for(i in 1:n)
{
  x = 1
  while(rbinom(n = 1, size = 1, prob = 0.3) == 0)
  {
    x = x + 1
  }
  X[i] = x
}

cat('Nombre de r�p�titions avant premier succ�s pour les 20 experiences :\n', X)