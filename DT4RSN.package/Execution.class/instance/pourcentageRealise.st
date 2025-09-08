processing
pourcentageRealise

self dateDeDebut ifNil:[^0].
self dateDeFin ifNil:[^0].
^ (self dateDeFin - self dateDeDebut) / self duree.
 