"
i define simple predicate 
	see my super class for more information
"
Class {
	#name : #FDAbstractSimpleFilter,
	#superclass : #FDAbstractFilter,
	#category : #'FileDialog-Strategy-Filters'
}

{ #category : #actions }
FDAbstractSimpleFilter class >> actions [
	^self allSubclasses collect: [:item |item new ]
]

{ #category : #testing }
FDAbstractSimpleFilter class >> isAbstract [ 
	^self = FDAbstractSimpleFilter 
]
