examples
scenario4

 | a voisins cibles |
a := self exemple4.
voisins := (a capacitesDeType: Detection) first   utilise.
cibles := voisins select:[:v| v amiOuEnnemi].
cibles do:[:c| (a capacitesDeType: Deplacement) first cible: c position; realise.
	(a capacitesDeType: Destruction) first cible: c  ; realise.
	].
^a
 