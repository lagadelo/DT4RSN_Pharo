examples
scenario5Ter

" self scenario5Ter"
"Le comportement est le meme pour tous"
"La recherche de voisins agressifs, la prise en compte par proximite, le deplacement et la destruction"
  |a    sequenceDeDeclenchement   |

a  := self exemple4.
 

sequenceDeDeclenchement := SequenceDeTaches new.
sequenceDeDeclenchement ajoute: 
"voisinage"
	(TacheUnitaire 
		avant:[:execution :vecteur|]  
		pendant: [:execution :vecteur| execution contexte variable: #voisins vaut:(vecteur capacitesDeType: Detection) first utilise] 
		apres:[:execution :vecteur|]
		).
"selection"
sequenceDeDeclenchement ajoute: 
	(TacheUnitaire 
		avant:[:execution :vecteur|] 
		pendant:[:execution :vecteur| execution contexte variable:#ennemis vaut: ((execution contexte variable: #voisins) reject:[:elt| elt amiOuEnnemi ])] 
		apres: 
			[:execution :vecteur| (execution contexte variable: #ennemis) isEmpty 
"Répétition"
				ifFalse:
					[|sequenceDAction|
 					sequenceDAction := SequenceDeTaches new.
					sequenceDAction ajoute: 
						(TacheUnitaire 
"tri et extraction"
							avant:[:execution2 :vecteur2| |tmp| 
																tmp := SortedCollection sortBlock: [:voisinA :voisinB| ( voisinA  position - vecteur2 position) r <= (voisinB position - vecteur2 position) r]. 
																tmp addAll: (execution2 variable: #ennemis). 
																execution2 contexte variable:#prochain vaut: tmp first] 
"deplacement"
							pendant:[:execution2 :vecteur2| |deplacement| deplacement :=  (vecteur2 capacitesDeType: Deplacement) first. deplacement cible: (execution2 variable: #prochain) position.  execution2 duree: (deplacement cible  - vecteur2 position) r / deplacement vitesse. deplacement realise. ] 
							apres:[:execution2 :vecteur2|]
							).
					sequenceDAction ajoute: 
"destruction"
						(TacheUnitaire 
							avant:[:execution2 :vecteur2|] 
							pendant:[:execution2 :vecteur2|    (vecteur2 capacitesDeType: Destruction) first cible: (execution2 variable: #prochain)  ; realise: 1.] 
							apres:[:execution2 :vecteur2| vecteur2 execute: sequenceDeDeclenchement "ie whileFalse"]
							duree:4).
					vecteur execute:sequenceDAction avecCommeContexte: execution.]   
			]).
		


Simulateur detruireSingleton. 
a execute:sequenceDeDeclenchement.
Simulateur singleton avance.

