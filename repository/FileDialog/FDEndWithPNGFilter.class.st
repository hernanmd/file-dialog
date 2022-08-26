"
I'm selecting file finishing with .png
"
Class {
	#name : #FDEndWithPNGFilter,
	#superclass : #FDAbstractSimpleFilter,
	#category : #'FileDialog-Strategy-Filters'
}

{ #category : #accessing }
FDEndWithPNGFilter >> name [
	^ 'end with png'
]

{ #category : #accessing }
FDEndWithPNGFilter >> predicate: aFileReference [

	^ self match: aFileReference pattern: '.*\.png'

]
