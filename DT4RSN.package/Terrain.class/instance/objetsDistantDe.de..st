processing
objetsDistantDe: uneDistance de: unObjet
| candidats |
candidats := self objets select:[:a| (a position - unObjet position) r < uneDistance].
candidats remove: unObjet.
^candidats