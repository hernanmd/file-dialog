"
I'm selecting only PNG file
"
Class {
	#name : #FDDotPNGFilter,
	#superclass : #FDAbstractCompositeFilter,
	#category : #'FileDialog-Strategy-Filters'
}

{ #category : #accessing }
FDDotPNGFilter >> name [
	^ 'png filter'
]

{ #category : #accessing }
FDDotPNGFilter >> predicate: aFileReference [

	^ aFileReference isDirectory
		or: [ aFileReference isFile
				and: [ self match: aFileReference pattern: '.*\.png' ] ]
]
