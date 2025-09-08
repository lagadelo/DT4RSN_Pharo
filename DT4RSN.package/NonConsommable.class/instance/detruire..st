processing
detruire: unTaux
self capacites do:[:a| a perd: unTaux].
self capacites: (self capacites reject:[:c| c consommation consommable quantiteResiduelle = 0]).
self capacites ifEmpty:[Terrain singleton supprimeObjet: self].
