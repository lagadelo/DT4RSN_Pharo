examples
scenario5


"Le comportement est le meme pour tous"
"La recherche de voisins agressifs, la prise en compte par proximite, le deplacement et la destruction"
 | a voisins   ennemis proximite sequence |
a := self exemple4.
[voisins := a execute: (TacheUnitaire detecter: nil). " Attention 0 effet de bord a la destruction"
ennemis := a execute: (TacheUnitaire ennemisParmi:  voisins).
ennemis isEmpty] whileFalse:[
proximite := a execute: (TacheUnitaire trierParDistance: ennemis).
 
sequence := SequenceDeTaches new.
sequence ajoute: (TacheUnitaire allerA: proximite first position).
sequence ajoute: (TacheUnitaire detruire: proximite first).
a execute: sequence.
].
 
^a
 