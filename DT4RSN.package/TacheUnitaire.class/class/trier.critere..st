instance creation
trier: desCibles critere:unBloc


^ self action: [:v| |tmp| tmp := SortedCollection sortBlock: unBloc. tmp addAll: desCibles. desCibles]. 