instance creation
singleton 
Singleton ifNil:[Singleton := super new initialize].
^Singleton