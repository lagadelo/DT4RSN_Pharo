examples
scenario5Bis


"Le comportement est le meme pour tous"
"La recherche de voisins agressifs, la prise en compte par proximite, le deplacement et la destruction"
 | a      proximite   |
a := self exemple4.
 "
[|sequenceDeDeclenchement|
sequenceDeDeclenchement := SequenceDeTaches new.
sequenceDeDeclenchement ajoute: ((TacheUnitaire realise: #detecter: parametres:#(nil) resultats: #voisins).
sequenceDeDeclenchement ajoute: ((TacheUnitaire realise: #ennemisParmi:  parametres: #(voisins)) resultats: #ennemis).

sequenceDeDeclenchement blocDeFin:[:unNonCommable|
	(unNonCommable variable: #ennemis) isEmpty) ifFalse:[|sequenceDAction|
 		sequenceDAction := SequenceDeTaches new.
		sequenceDAction ajoute: (TacheUnitaire realise: #trierParDistance: parametres: #(ennemis) resultats: #proximite).
		deplacement := (TacheUnitaire realise: #allerA: parametres:#(emplacement).
		deplacement blocDebut: [ :v| v variable: #emplacement vaut: (v variable: proximite) first position]
 		sequenceDAction ajoute: deplacement.
		destruction := (TacheUnitaire realise: #detruire: parametres:#(cible).
		deplacement blocDebut: [ :v| v variable: #emplacement vaut: (v variable: proximite) first position]
 		sequenceDAction ajoute: deplacement.
sequenceDAction ajoute: (TacheUnitaire detruire: proximite first).
a execute: sequenceDAction.]



	 execute: sequence.
(a variable: #ennemis) isEmpty] whileFalse:[
proximite := a execute: (TacheUnitaire realise: #trierParDistance: parametres: #(ennemis)).
 
sequence := SequenceDeTaches new.
sequence ajoute: (TacheUnitaire allerA: proximite first position).
sequence ajoute: (TacheUnitaire detruire: proximite first).
a execute: sequence.
].
 
^a
 "