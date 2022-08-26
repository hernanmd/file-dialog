"
I'm selecting file
"
Class {
	#name : #FDIsFileFilter,
	#superclass : #FDAbstractSimpleFilter,
	#category : #'FileDialog-Strategy-Filters'
}

{ #category : #accessing }
FDIsFileFilter >> name [
	^ 'file filter'
]

{ #category : #accessing }
FDIsFileFilter >> predicate: aFileReference [
	^ aFileReference isFile
	
]
