testing
estDemarrable


" dans quel ordre prendre les choses? Tache vs execution.
"
^(self tache dependancesEnEntree anySatisfy:  [:a| a estTerminee not]) isNil

