"
A filter to customize with an extension.

"
Class {
	#name : #FDFileFilter,
	#superclass : #FDAbstractSimpleFilter,
	#instVars : [
		'extension'
	],
	#category : #'FileDialog-Strategy-Filters'
}

{ #category : #accessing }
FDFileFilter >> extension [
	"Answer a <String> representing the extension to apply when filtering using the receiver"

	^ extension
		ifNil: [ extension := String empty ]
]

{ #category : #accessing }
FDFileFilter >> extension: anObject [

	extension := anObject
]

{ #category : #accessing }
FDFileFilter >> name [
	^ 'ends with'
]

{ #category : #accessing }
FDFileFilter >> predicate: aFileReference [

	^ self 
		match: aFileReference 
		pattern: '.*\.' , self extension
]
