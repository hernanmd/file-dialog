"
i'm manage ContextMenu to creat Directory
"
Class {
	#name : #FDCreatDirectoryCommand,
	#superclass : #CmCommand,
	#category : #'FileDialog-Commands'
}

{ #category : #hooks }
FDCreatDirectoryCommand >> execute [
	"Execute the actions that should be done by the command.
	 This method expect that the context has been put in #context inst. var. if any context is relevant."
	self context createDirectory
]

{ #category : #initialization }
FDCreatDirectoryCommand >> initialize [
	super initialize.
	self
		name: 'Create a directory';
		description: 'create a directory '
]
