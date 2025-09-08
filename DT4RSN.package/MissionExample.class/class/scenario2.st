examples
scenario2

"idem exemple1; ajoute une cacite et l'utilise (trouve ses voisins dans une certaines portée)"
| a |
 a:= self exemple2.
 
"^(a capacitesDeType: Detection) collect:[:c| c utilise]"
^a execute: (TacheUnitaire detecter:nil)
