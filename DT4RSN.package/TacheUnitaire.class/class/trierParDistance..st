instance creation
trierParDistance: desCibles  


"^ self action: [:v| |tmp| tmp := SortedCollection sortBlock: [:a :b| ( a position - v position) r <= (b position - v position) r]. tmp addAll: desCibles. desCibles]. "

^self trier:  desCibles critereSurModele: [ :v| [:a :b| ( a position - v position) r <= (b position - v position) r] ]