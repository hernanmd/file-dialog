"
I'm selecting only directory
"
Class {
	#name : #FDDirectoryFilter,
	#superclass : #FDAbstractSimpleFilter,
	#category : #'FileDialog-Strategy-Filters'
}

{ #category : #accessing }
FDDirectoryFilter >> name [
	^ 'directory filter'
]

{ #category : #accessing }
FDDirectoryFilter >> predicate: aFileReference [
	^ aFileReference isDirectory
]
