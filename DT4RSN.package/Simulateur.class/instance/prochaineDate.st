processing
prochaineDate
^((self evenements collect:[: b|b date]) asSet asSortedCollection  detect:[:c| c >= self dateCourante])  
