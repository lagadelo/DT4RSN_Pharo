processing
avance
dateCourante := self prochaineDate.
self prochainsEvenements do:[:a| self traite:a].
 
self prochainsEvenements ifNotEmpty:[Transcript show: 'Step ', self dateCourante printString;cr.
	self avance].

Transcript show:'TERMINE';cr

