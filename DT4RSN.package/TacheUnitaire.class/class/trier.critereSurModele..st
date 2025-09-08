instance creation
trier: desCibles critereSurModele:unBloc


^ self action: [:v| |tmp| tmp := SortedCollection sortBlock: (unBloc value: v). tmp addAll: desCibles. desCibles]. 