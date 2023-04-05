# Définir les paramètres
n <- 1000   # nombre de pas dans le mouvement brownien
m <- 10     # nombre de variables

# Générer les mouvements browniens
set.seed(123) # pour la reproductibilité
bm <- matrix(0, n, m)
bm[1, ] <- rnorm(m, 0, 1)

for (i in 2:n) {
  bm[i, ] <- bm[i-1, ] + rnorm(m, 0, 1)
}

# Normaliser les résultats pour avoir des valeurs entre -10 et 10
bm <- bm / max(abs(bm)) * 10

# Afficher les résultats
head(bm)
