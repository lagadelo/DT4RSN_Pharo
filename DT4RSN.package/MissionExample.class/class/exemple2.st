examples
exemple2

"idem exemple1; ajoute une cacite et l'utilise (trouve ses voisins dans une certaines portée)"
| a forces|
self exemple1.
a := (Terrain singleton objetDeReference:#a) .
forces := Terrain singleton objetsQui: [:d| d amiOuEnnemi & (d == a) not].
forces do:[:d| d ajouteCapacite: (Detection  portee:120)].
a ajouteCapacite: (Detection  portee:200). 
^a
 