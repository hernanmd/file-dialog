Extension { #name : #String }

{ #category : #'*FileDialog' }
String >> asFDFilter [
	"Answer a new filter using the receiver as extension"

	^ FDFileFilter new
		extension: self;
		yourself
]
