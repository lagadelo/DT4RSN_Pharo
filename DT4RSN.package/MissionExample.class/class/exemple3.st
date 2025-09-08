examples
exemple3

"idem exemple2; ajoute un emport de carburant (consommable) et l'utilise pour un déplcament"

| a carburant consommation  |
self exemple2.
a := Terrain singleton objetDeReference:#a.
carburant := Consommable reference:#carburant quantite:1000.
consommation := Consommation consommable:carburant quantite:2.
a ajouteCapacite: ((Deplacement  consomme: consommation) vitesse:20; yourself).


^a