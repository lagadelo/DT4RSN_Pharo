examples
exemple1

"Définir un nouveau terrain, y placer quatre drones dont un ennemi"
| r |
Terrain destroySingleton.
Terrain singleton ajouteObjet: ((DroneAerien ami:100@100) reference: #a).
Terrain singleton ajouteObjet: ((DroneAerien ami:100@200)  reference: #b).
Terrain singleton ajouteObjet: ((DroneAerien ennemi: 200@200)  reference: #c).
Terrain singleton ajouteObjet: ((DroneAerien ami:200@100)  reference: #d).
r := Random new. 
1 to: 10 do:[:i|  |e armes consommationEnArmes| 
	e := ((DroneAerien ennemi:  (((r next @ r next)  + 1) *100) rounded )reference: i).
	armes := Consommable reference:#armes quantite:100.
	consommationEnArmes := Consommation consommable: 	armes quantite:40.
	e ajouteCapacite: (Destruction   consomme: consommationEnArmes).
	Terrain singleton ajouteObjet:e.].
^Terrain singleton