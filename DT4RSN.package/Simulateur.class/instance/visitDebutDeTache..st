visiting
visitDebutDeTache: unDebutDeTache

 | uneExecution |
uneExecution := unDebutDeTache execution.
uneExecution dateDeDebut: self dateCourante.

uneExecution   realiseAvant.
uneExecution   realisePendant.

self enregistre: (FinDeTache execution: uneExecution) a: self dateCourante + uneExecution duree.
