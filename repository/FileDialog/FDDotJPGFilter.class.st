"
I'm selecting only jpg file
"
Class {
	#name : #FDDotJPGFilter,
	#superclass : #FDAbstractCompositeFilter,
	#category : #'FileDialog-Strategy-Filters'
}

{ #category : #accessing }
FDDotJPGFilter >> name [
	^ 'end with jpg'
]

{ #category : #accessing }
FDDotJPGFilter >> predicate: aFileReference [

	^ aFileReference isDirectory or: [ 
		  aFileReference isFile and: [ self match: aFileReference pattern: '.*\.jpg'] ]
]
