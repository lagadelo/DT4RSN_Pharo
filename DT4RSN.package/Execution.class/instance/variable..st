temp vars
variable: unSymbole


^self variables at: unSymbole ifAbsent:[self contexte ifNotNil:[self contexte variable:unSymbole]]