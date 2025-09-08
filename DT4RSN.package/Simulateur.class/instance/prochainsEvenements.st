processing
prochainsEvenements
| futur |
self evenements ifEmpty:[^#()].

futur := self prochaineDate.

^self evenements select:[:a| a date = futur]
