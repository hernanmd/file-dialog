[![Build Status](https://travis-ci.org/pharo-contributions/file-dialog.svg?branch=master)](https://travis-ci.org/pharo-contributions/file-dialog) [![Coverage Status](https://coveralls.io/repos/github/pharo-contributions/file-dialog/badge.svg)](https://coveralls.io/github/pharo-contributions/file-dialog)

A simple replacement for Pharo's native file/folder selection dialog.

## Screenshots

Basic file preview

![Select File To Open](https://user-images.githubusercontent.com/4825959/186803185-60c28364-3865-4471-820c-f2a45a3728e9.png)

Bookmark groups

![Select File To Open 2](https://user-images.githubusercontent.com/4825959/186803188-07dd53d8-376a-4774-acc2-0c99dc9ea5b5.png)

Save As

![Save As](https://user-images.githubusercontent.com/4825959/186803211-da1b19a4-ec13-4806-a68c-cd86d9a32db4.png)

Filters

![Select File To Open3](https://user-images.githubusercontent.com/4825959/186803201-305fa0a5-01a6-4469-bd50-838e55be2cae.png)

Add bookmarks

![Screen Shot 2022-08-26 at 04 30 25](https://user-images.githubusercontent.com/4825959/186803914-a4ace3e4-aaae-4d2c-a17d-e29ef50a2527.png)

## Features

* ContextMenu to add/remove bookmark
* Toggle hidden files (right-click on file listing)
* Preset file name
* Filtering files by subclass FDAbstractSelect
* TextInputField like window path text input
* Preview system
* Change the column of the table presenter

## Installation

```smalltalk
Metacello new
	baseline: 'FileDialog';
	repository: 'github://hernanmd/file-dialog/repository';
	load.
```

### Replacing native dialogs

If you feel brave, you can replace the native dialogs everywhere in the system by running:

```smalltalk
FDMorphicUIManager new beDefault
```

Of course you can switch back anytime you want.

```smalltalk
MorphicUIManager new beDefault
```

### Classes

* `FDSaveFileDialog` - saving a file
* `FDOpenFileDialog` - selecting a file
* `FDOpenDirectoryDialog` - selecting a directory

### API

The user-facing API is in the `api-customization` protocol of `FDFileDialogPresenter`

* `defaultFolder: aPath` — where should the dialog open, the default is the imageDirectory
* `filtersCustomization: aCollectionOfFDAbstractPredicate` — a collection of FDAbstractPredicate
* `bookmarks: aCollectionOfBookmark` _ see bookmark example class side of FileDialog
* `okActionBlock: aBlock` — a one arg block executed when a file was selected
* `previewer: aPreviewer` _ a son of FDAbstractPreviewer that returning a Spec widget 
* `columns: aCollectionOfColumns` _ you have to give a collection of subclass of FDAbstractFileReferenceColumn

## Examples

Open a file with previewer:
```smalltalk
FDOpenFileDialog new
	previewer: FDInspectPreviewer new;
	openDialog.
```

Save a file
```smalltalk
FDSaveFileDialog new openDialog 
```

Adding bookmarks
```smalltalk
FDOpenFileDialog new
	bookmarks: {
		FDBookmark home.
		FDBookmark root.
		FDBookmark tmp.
		(FDBookmark
			name: 'Image location'
			location: FileLocator imageDirectory
			icon: nil) .
		(FDGroupBookMark
				name: 'exampleGroup'
				collection:
					{FDBookmark image.
					FDBookmark home}
				iconName: 'group') };
		openDialog
```

Multiple options
```Smalltalk
FDOpenFileDialog new	
	previewer: FDContentPreviewer new;
	"with this when you select a png file it will display it"
	filtersCustomization: { FDJPGOrPNGFilter new };
	"with you add filter and there always the 'no filter'"
	defaultFolder: FileLocator home asFileReference;
	"it's open the FileDialog on this file"
	okActionBlock: [ :selectedFileReference | selectedFileReference inspect ];
	openDialog
```
