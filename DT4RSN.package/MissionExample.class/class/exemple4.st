examples
exemple4

"idem exemple2; ajoute un emport de carburant (consommable) et l'utilise pour un déplcament"

| a    armes   consommationEnArmes |
self exemple3.
a := Terrain singleton objetDeReference:#a.
 
armes := Consommable reference:#armes quantite:100.
consommationEnArmes := Consommation consommable: 	armes quantite:40.

a ajouteCapacite: (Destruction   consomme: consommationEnArmes).
 
^a