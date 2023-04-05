# Description
Ce code crée une animation montrant la trajectoire d'un mouvement brownien. La fonction brownian_anim() utilise la librairie ggplot2 pour créer un graphique avec des points jaunes avec une bordure rouge qui se déplacent de manière aléatoire à chaque étape. La fonction transition_reveal() permet de faire apparaître chaque point un par un, créant ainsi l'effet d'animation. La légende du graphique est définie avec ggplot2::labs(). Enfin, animint() est utilisé pour créer l'animation et print() est utilisé pour afficher l'animation dans la console R.

## About test

Ce test unitaire utilise la fonction animint() pour créer un objet d'animation avec des données de tracé générées aléatoirement. Ensuite, il ajoute une couche de tracé à l'objet d'animation en utilisant la fonction ggplot2::layer(). La fonction animint2::saveAnimint() est ensuite utilisée pour générer le fichier de sortie HTML contenant l'animation.

Enfin, les assertions expect_true() sont utilisées pour vérifier si le fichier de sortie HTML existe et si l'animation s'affiche correctement dans un navigateur web en utilisant la fonction auxiliaire testthat:::http_ok(). Si l'animation ne s'affiche pas correctement, le test échouera.