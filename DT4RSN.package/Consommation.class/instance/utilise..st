performing service
utilise: facteur

^self consommable quantiteResiduelle >= (self quantite * facteur) ifTrue:[self consommable diminueDe: self quantite * facteur. true] ifFalse:[false]