performing service
realise: pourcentage

| distance vecteurDeDeplacement|

"On ne realise que les opérartions possibles"

vecteurDeDeplacement :=((self cible - self vecteur position)).
distance :=  vecteurDeDeplacement r * pourcentage.
(self consommation utilise: distance * (self impact:vitesse)) ifTrue:
[   self vecteur position: self vecteur position+ (vecteurDeDeplacement * pourcentage). true] ifFalse:[false] .


