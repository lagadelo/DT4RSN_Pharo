processing
doitContinuerA: uneDate

"Une action ayant terminée à cette date peut invalider la tache courante"
(self action aDuSens:uneDate)   ifFalse:[self termineA:uneDate]