"
I'm selecting file finishing with .jpg
"
Class {
	#name : #FDEndWithJPGFilter,
	#superclass : #FDAbstractSimpleFilter,
	#category : #'FileDialog-Strategy-Filters'
}

{ #category : #accessing }
FDEndWithJPGFilter >> name [
	^ 'end with jpg'
]

{ #category : #accessing }
FDEndWithJPGFilter >> predicate: aFileReference [

	^ self match: aFileReference pattern: '.*\.jpg'
]
