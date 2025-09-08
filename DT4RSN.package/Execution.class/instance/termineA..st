processing
termineA: uneDate
"Si l'action s'arrete, elle n'a pas été totalement réalisée, et sa date de fin révisée est antérieure à la date de fin prévue"
self pourcentageRealise: ( uneDate - self dateDeDebut) / duree.
self dateDeFin: uneDate