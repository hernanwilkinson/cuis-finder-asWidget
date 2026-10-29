'From Cuis7.9 [latest update: #8184] on 19 September 2026 at 9:12:51 pm'!
'Description Keep the finder open when one of its buttons is clicked'!
!provides: 'Tools-Finder' '1.76.0'!
SystemOrganization addCategory: #'Tools-Finder-Model'!
SystemOrganization addCategory: #'Tools-Finder-UI'!
SystemOrganization addCategory: #'Tools-Finder-UI-Model'!
SystemOrganization addCategory: #'Tools-Finder-Tests'!


!classDefinition: #FinderMorph category: #'Tools-Finder-UI'!
LinearLayoutMorph subclass: #FinderMorph
	instanceVariableNames: 'toolbar searchBar results model focusFollowsMouse dragBar'
	classVariableNames: 'CurrentFinder'
	poolDictionaries: ''
	category: 'Tools-Finder-UI'!
!classDefinition: 'FinderMorph class' category: #'Tools-Finder-UI'!
FinderMorph class
	instanceVariableNames: ''!

!classDefinition: #FinderSearchBar category: #'Tools-Finder-UI'!
LinearLayoutMorph subclass: #FinderSearchBar
	instanceVariableNames: 'searchBox changeHandler keyPressedHandler dateAndTimeOfLastKeyStroke timeToWaitBeforeNotifyingChanges'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tools-Finder-UI'!
!classDefinition: 'FinderSearchBar class' category: #'Tools-Finder-UI'!
FinderSearchBar class
	instanceVariableNames: ''!

!classDefinition: #FinderResultsListMorph category: #'Tools-Finder-UI'!
PluggableListMorph subclass: #FinderResultsListMorph
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tools-Finder-UI'!
!classDefinition: 'FinderResultsListMorph class' category: #'Tools-Finder-UI'!
FinderResultsListMorph class
	instanceVariableNames: ''!

!classDefinition: #FinderSearchTextModelMorph category: #'Tools-Finder-UI'!
TextModelMorph subclass: #FinderSearchTextModelMorph
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tools-Finder-UI'!
!classDefinition: 'FinderSearchTextModelMorph class' category: #'Tools-Finder-UI'!
FinderSearchTextModelMorph class
	instanceVariableNames: ''!

!classDefinition: #FinderSearchInnerTextMorph category: #'Tools-Finder-UI'!
InnerTextMorph subclass: #FinderSearchInnerTextMorph
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tools-Finder-UI'!
!classDefinition: 'FinderSearchInnerTextMorph class' category: #'Tools-Finder-UI'!
FinderSearchInnerTextMorph class
	instanceVariableNames: ''!

!classDefinition: #Catalog category: #'Tools-Finder-Model'!
Object subclass: #Catalog
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tools-Finder-Model'!
!classDefinition: 'Catalog class' category: #'Tools-Finder-Model'!
Catalog class
	instanceVariableNames: ''!

!classDefinition: #ClassNamesCatalog category: #'Tools-Finder-Model'!
Catalog subclass: #ClassNamesCatalog
	instanceVariableNames: 'results selectedResultIndex'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tools-Finder-Model'!
!classDefinition: 'ClassNamesCatalog class' category: #'Tools-Finder-Model'!
ClassNamesCatalog class
	instanceVariableNames: ''!

!classDefinition: #CompositeCatalog category: #'Tools-Finder-Model'!
Catalog subclass: #CompositeCatalog
	instanceVariableNames: 'catalogs'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tools-Finder-Model'!
!classDefinition: 'CompositeCatalog class' category: #'Tools-Finder-Model'!
CompositeCatalog class
	instanceVariableNames: ''!

!classDefinition: #ImplementedSelectorsCatalog category: #'Tools-Finder-Model'!
Catalog subclass: #ImplementedSelectorsCatalog
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tools-Finder-Model'!
!classDefinition: 'ImplementedSelectorsCatalog class' category: #'Tools-Finder-Model'!
ImplementedSelectorsCatalog class
	instanceVariableNames: ''!

!classDefinition: #ImplementorsCatalog category: #'Tools-Finder-Model'!
Catalog subclass: #ImplementorsCatalog
	instanceVariableNames: 'resultsSorter'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tools-Finder-Model'!
!classDefinition: 'ImplementorsCatalog class' category: #'Tools-Finder-Model'!
ImplementorsCatalog class
	instanceVariableNames: ''!

!classDefinition: #PackagesCatalog category: #'Tools-Finder-Model'!
Catalog subclass: #PackagesCatalog
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tools-Finder-Model'!
!classDefinition: 'PackagesCatalog class' category: #'Tools-Finder-Model'!
PackagesCatalog class
	instanceVariableNames: ''!

!classDefinition: #SendersCatalog category: #'Tools-Finder-Model'!
Catalog subclass: #SendersCatalog
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tools-Finder-Model'!
!classDefinition: 'SendersCatalog class' category: #'Tools-Finder-Model'!
SendersCatalog class
	instanceVariableNames: ''!

!classDefinition: #ToolsCatalog category: #'Tools-Finder-Model'!
Catalog subclass: #ToolsCatalog
	instanceVariableNames: 'tools implementorsCatalog'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tools-Finder-Model'!
!classDefinition: 'ToolsCatalog class' category: #'Tools-Finder-Model'!
ToolsCatalog class
	instanceVariableNames: ''!

!classDefinition: #CompositeCatalogResult category: #'Tools-Finder-Model'!
Object subclass: #CompositeCatalogResult
	instanceVariableNames: 'catalog result'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tools-Finder-Model'!
!classDefinition: 'CompositeCatalogResult class' category: #'Tools-Finder-Model'!
CompositeCatalogResult class
	instanceVariableNames: ''!

!classDefinition: #Finder category: #'Tools-Finder-Model'!
Object subclass: #Finder
	instanceVariableNames: 'results selectedResultIndex selectedCatalog catalogs currentQuery changeSelectedCatalogSelectorPrefix isSelectedCatalogSelectorPrefix selectedCatalogChangeEvent browseSelectedResultEvent closeEvent'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tools-Finder-Model'!
!classDefinition: 'Finder class' category: #'Tools-Finder-Model'!
Finder class
	instanceVariableNames: ''!

!classDefinition: #ResultsSorter category: #'Tools-Finder-Model'!
Object subclass: #ResultsSorter
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tools-Finder-Model'!
!classDefinition: 'ResultsSorter class' category: #'Tools-Finder-Model'!
ResultsSorter class
	instanceVariableNames: ''!

!classDefinition: #AlphabeticalResultsSorter category: #'Tools-Finder-Model'!
ResultsSorter subclass: #AlphabeticalResultsSorter
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tools-Finder-Model'!
!classDefinition: 'AlphabeticalResultsSorter class' category: #'Tools-Finder-Model'!
AlphabeticalResultsSorter class
	instanceVariableNames: ''!

!classDefinition: #SelectorSizeResultsSorter category: #'Tools-Finder-Model'!
ResultsSorter subclass: #SelectorSizeResultsSorter
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tools-Finder-Model'!
!classDefinition: 'SelectorSizeResultsSorter class' category: #'Tools-Finder-Model'!
SelectorSizeResultsSorter class
	instanceVariableNames: ''!

!classDefinition: #SequentialResultsSorter category: #'Tools-Finder-Model'!
ResultsSorter subclass: #SequentialResultsSorter
	instanceVariableNames: 'renameMe1 resultsSorters'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tools-Finder-Model'!
!classDefinition: 'SequentialResultsSorter class' category: #'Tools-Finder-Model'!
SequentialResultsSorter class
	instanceVariableNames: ''!

!classDefinition: #SizeResultsSorter category: #'Tools-Finder-Model'!
ResultsSorter subclass: #SizeResultsSorter
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tools-Finder-Model'!
!classDefinition: 'SizeResultsSorter class' category: #'Tools-Finder-Model'!
SizeResultsSorter class
	instanceVariableNames: ''!

!classDefinition: #SubstringMatcher category: #'Tools-Finder-Model'!
Object subclass: #SubstringMatcher
	instanceVariableNames: 'collection substring resultsSorter'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tools-Finder-Model'!
!classDefinition: 'SubstringMatcher class' category: #'Tools-Finder-Model'!
SubstringMatcher class
	instanceVariableNames: ''!

!classDefinition: #CatalogButton category: #'Tools-Finder-UI-Model'!
Object subclass: #CatalogButton
	instanceVariableNames: 'catalog model'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tools-Finder-UI-Model'!
!classDefinition: 'CatalogButton class' category: #'Tools-Finder-UI-Model'!
CatalogButton class
	instanceVariableNames: ''!

!classDefinition: #SearchBoxEditor category: #'Tools-Finder-UI-Model'!
Object subclass: #SearchBoxEditor
	instanceVariableNames: 'textEditor model keyStrokeHandler'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tools-Finder-UI-Model'!
!classDefinition: 'SearchBoxEditor class' category: #'Tools-Finder-UI-Model'!
SearchBoxEditor class
	instanceVariableNames: ''!

!classDefinition: #FinderMorphTest category: #'Tools-Finder-Tests'!
TestCase subclass: #FinderMorphTest
	instanceVariableNames: 'finder hand'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tools-Finder-Tests'!
!classDefinition: 'FinderMorphTest class' category: #'Tools-Finder-Tests'!
FinderMorphTest class
	instanceVariableNames: ''!


!FinderSearchBar commentStamp: 'NPM 5/9/2020 13:51:51' prior: 0!
I am responsible for capturing the query to be performed.

Performance
=========

To avoid notifying changes every time a key is pressed, I keep track of the date and time of the last keystroke (see #processKeyStroke).
I use that information in my #stepAt: method to check whether I should notify #query has changed or not, using my #timeToWaitBeforeNotifyingChanges instance variable.

Hacks
====
To implement shortcuts, I use SearchBoxEditor (see #initializeSearchBoxEditor and comments in SearchBoxEditor class).


!

!FinderResultsListMorph commentStamp: '<historical>' prior: 0!
Custom list morph for showing finder results that disables keyboard focus.!

!ToolsCatalog commentStamp: '<historical>' prior: 0!
I am a catalog that contains all tools available in the World > Open... menu.

To avoid hardcoding them, I look for implementors of #worldMenuForOpenGroup and evaluate them to retrieve each menu item (see #initializeTools).!

!CatalogButton commentStamp: 'NPM 4/2/2020 00:48:04' prior: 0!
I represent a catalog button's model.

The way catatalog buttons work in FinderWindow is similar to radio buttons: only
one can be active at a time, and once one is selected the previous catalog button
is deselected.

To react to selected catalog change events, I subscribe to my finder to determine whether 
I am the selected catalog or not (see #isSelected).

When I am clicked, I set myself as the selected catalog (see #value).!

!SearchBoxEditor commentStamp: '<historical>' prior: 0!
My purpose is wrapping instances of TextEditor to override keyboard shortcuts.

If I cannot handle a keyboard event, I forward it to my wrapped text editor.

Any message I do not override is forwarded to my wrapped editor as well.

I also forward event to the results list, so it can be browsed from the editor (see)

Note
===
I exist as a hack, only to allow overriding keyboard handlers.

The way I am installed, and replace, an InnerTextMorph's editor is by assigning 
its #editor instance variable using reflection (see #installOn:mode: in my class).

Currently, TextEditor's keyboard shortcut mappings are shared among all instances and 
cannot be modified/overriden for a particular instance (see Editor>>#shortcuts).!

!FinderMorph methodsFor: 'GUI building' stamp: 'MM 7/Sep/2020, 2:38:33 pm (UTC)'!
addToolbarButtonFor: catalog

	^ toolbar addMorph: (self toolbarButtonFor: catalog )! !

!FinderMorph methodsFor: 'GUI building' stamp: 'HAW 30/Dec/2024, 10:17:56 pm (UTC)'!
buildDragBar

	|draggingBar|
	
	draggingBar := LayoutMorph newRow.
	draggingBar addMorph: (LabelMorph contents: 'Finder').
	
	self layoutMorph addMorph: draggingBar proportionalHeight: 0.15! !

!FinderMorph methodsFor: 'GUI building' stamp: 'MM 7/Sep/2020, 2:38:33 pm (UTC)'!
buildLayout

	^ self layoutMorph
		beColumn
		addMorph: toolbar fixedHeight: self defaultButtonPaneHeight;
		addMorph: searchBar fixedHeight: self defaultButtonPaneHeight;
		addMorphUseAll: results! !

!FinderMorph methodsFor: 'GUI building' stamp: 'kdpm 19/May/2024, 11:51:03 am (UTC)'!
buildMorphicWindow
	self buildDragBar.
	self buildToolbar.
	self buildSearchBar.
	self buildResults.
	self buildLayout.! !

!FinderMorph methodsFor: 'GUI building' stamp: 'jmv 19/Jul/2024, 4:02:24 pm (UTC)'!
buildResults

	results := (FinderResultsListMorph 
		withModel: model
		listGetter: #results
		indexGetter: #selectedResultIndex
		indexSetter: #selectedResultIndex:)
			color: Color veryVeryLightGray;
			autoDeselect: false;
			setProperty: #click:localPosition:
			toValue: [ :aMouseEvent :localEventPosition | self browseResultAt: localEventPosition ];
			yourself.
	
	results verticalScrollBar color: Theme current defaultWindowColor.
	results horizontalScrollBar color: Theme current defaultWindowColor.! !

!FinderMorph methodsFor: 'GUI building' stamp: 'MM 25/Sep/2020, 5:42:33 pm (UTC)'!
buildSearchBar
	
	searchBar := FinderSearchBar
		onChanged: [ :query | model search: query ]
		onKeyPressed: [ :event | self processKeyStroke: event ]
		notifyingChangesAfter: 250 milliSeconds
	
	
	
	
	! !

!FinderMorph methodsFor: 'GUI building' stamp: 'PTP 2/Nov/2022, 3:37:35 pm (UTC)'!
buildToolbar
	
	toolbar := LayoutMorph newRow color: Theme current finderSearchBarToolbarColor; yourself.
	
	self buildToolbarButtonsForCatalogs.! !

!FinderMorph methodsFor: 'GUI building' stamp: 'MM 7/Sep/2020, 2:38:33 pm (UTC)'!
buildToolbarButtonsForCatalogs

	^ model catalogsDo: [ :catalog | self addToolbarButtonFor: catalog ]! !

!FinderMorph methodsFor: 'GUI building' stamp: 'MM 7/Sep/2020, 2:43:47 pm (UTC)'!
defaultButtonPaneHeight
	"Answer the user's preferred default height for new button panes."

	^ Theme current buttonPaneHeight! !

!FinderMorph methodsFor: 'GUI building' stamp: 'MM 7/Sep/2020, 2:38:54 pm (UTC)'!
layoutMorph
	^ self! !

!FinderMorph methodsFor: 'GUI building' stamp: 'PTP 2/Nov/2022, 3:43:14 pm (UTC)'!
toolbarButtonFor: aCatalog

	^ (PluggableButtonMorph
		model: (CatalogButton for: aCatalog model: model)
		stateGetter: #isSelected
		action: #value
		label: aCatalog name)
		color: Theme current finderSearchBarToolbarButtonColor; 
		yourself! !

!FinderMorph methodsFor: 'top window' stamp: 'MM 7/Sep/2020, 2:38:33 pm (UTC)'!
submorphToFocusKeyboard

	^ searchBar searchField! !

!FinderMorph methodsFor: 'shortcuts' stamp: 'MM 7/Sep/2020, 2:38:33 pm (UTC)'!
forwardToResults: aKeyboardEvent

	^ (results arrowKey: aKeyboardEvent)
		isNil not
! !

!FinderMorph methodsFor: 'shortcuts' stamp: 'MM 7/Sep/2020, 2:38:33 pm (UTC)'!
processArrowUpOrDown: aKeyboardEvent 
	
	aKeyboardEvent isArrowUp 
		ifTrue: [ 
			model selectPreviousResult.
			^ true ].
		
	aKeyboardEvent isArrowDown 
		ifTrue: [ 
			model selectNextResult.
			^ true ].

	^ false
	! !

!FinderMorph methodsFor: 'shortcuts' stamp: 'JEC 11/Jan/2026, 2:05:49 am (UTC)'!
processEscKey: aKeyboardEvent

	aKeyboardEvent isEsc 
		ifTrue: [ self delete ].

	^ aKeyboardEvent isEsc! !

!FinderMorph methodsFor: 'shortcuts' stamp: 'JEC 6/Jan/2026, 8:21:19 pm (UTC)'!
processKeyStroke: aKeyboardEvent 
	
	(self processTab: aKeyboardEvent)
		ifTrue: [ ^ true ].
	
	(self processArrowUpOrDown: aKeyboardEvent)
		ifTrue: [ ^ true ].
		
	(self processReturnKey: aKeyboardEvent)
		ifTrue: [ ^ true ].
		
	(self processEscKey: aKeyboardEvent)
		ifTrue: [ ^ true ].

	(self forwardToResults: aKeyboardEvent)
		ifTrue: [ ^ true ].
		
	^ false! !

!FinderMorph methodsFor: 'shortcuts' stamp: 'MM 7/Sep/2020, 3:28:27 pm (UTC)'!
processReturnKey: aKeyboardEvent

	(aKeyboardEvent isReturnKey)
		ifTrue: [ 
			searchBar notifyQueryChanged.
			self browseSelectedResult ].
		
	^ aKeyboardEvent isReturnKey! !

!FinderMorph methodsFor: 'shortcuts' stamp: 'MM 7/Sep/2020, 2:38:33 pm (UTC)'!
processTab: aKeyboardEvent 
	
	aKeyboardEvent isTab
		ifTrue: [ 
			aKeyboardEvent shiftPressed
				ifTrue: [ model selectPreviousCatalog ]
				ifFalse: [ model selectNextCatalog ]].
	
	^ aKeyboardEvent isTab! !

!FinderMorph methodsFor: 'browsing' stamp: 'MM 7/Sep/2020, 3:30:44 pm (UTC)'!
browseResultAt: aPosition 
	
	model
		selectedResultIndex: (results rowAtLocation: aPosition).
	self	browseSelectedResult
			
			! !

!FinderMorph methodsFor: 'browsing' stamp: 'MM 7/Sep/2020, 3:28:56 pm (UTC)'!
browseSelectedResult
	self delete.
	model browseSelectedResult.! !

!FinderMorph methodsFor: 'initialization' stamp: 'PTP 2/Nov/2022, 2:13:03 pm (UTC)'!
defaultColor
	^ Theme current defaultWindowColor ! !

!FinderMorph methodsFor: 'initialization' stamp: 'Ez3 20/Dec/2024, 5:58:21 am (UTC)'!
openInWorld
	super openInWorld.
	self morphHeight: self defaultButtonPaneHeight * 9.
	self positionInWorld: ((self runningWorld morphWidth / 2)  - (self morphWidth / 2)) @ 200.
	self comeToFront.

	"Disable focusFollowsMouse while the finder is open."
	focusFollowsMouse := Preferences at: #focusFollowsMouse.
	focusFollowsMouse ifTrue: [Preferences at: #focusFollowsMouse put: false].
	"Set keyboard focus"
	self world ifNotNil: [ :w |
		w activeHand newKeyboardFocus: self submorphToFocusKeyboard ].
	FinderMorph current: self.! !

!FinderMorph methodsFor: 'submorphs-add/remove' stamp: 'JEC 11/Jan/2026, 2:05:21 am (UTC)'!
delete

	model close.
	self class deleteCurrent.
	focusFollowsMouse ifTrue: [Preferences at: #focusFollowsMouse put: true ].
	self runningWorld activeHand newKeyboardFocus: self runningWorld.
	super delete.! !

!FinderMorph methodsFor: 'event handling testing' stamp: 'MM 25/Sep/2020, 5:39:28 pm (UTC)'!
handlesKeyboard
	^ true! !

!FinderMorph methodsFor: 'model' stamp: 'MM 7/Sep/2020, 2:42:16 pm (UTC)'!
model
	
	^ model! !

!FinderMorph methodsFor: 'model' stamp: 'MM 7/Sep/2020, 2:42:06 pm (UTC)'!
model: anObject

	model _ anObject
	! !

!FinderMorph methodsFor: 'keyboard focus' stamp: 'HAW 19/Sep/2026, 11:36:51 pm (UTC)'!
focusSearchField

	self world activeHand newKeyboardFocus: self submorphToFocusKeyboard! !

!FinderMorph methodsFor: 'keyboard focus' stamp: 'HAW 19/Sep/2026, 11:36:51 pm (UTC)'!
isKeyboardFocusInside

	^self world activeHand keyboardFocus
		ifNil: [ false ]
		ifNotNil: [ :focusedMorph | focusedMorph hasOwner: self ]! !

!FinderMorph methodsFor: 'keyboard focus' stamp: 'HAW 19/Sep/2026, 11:36:51 pm (UTC)'!
searchFieldLostKeyboardFocus

	"A click on one of my buttons or on my results takes the keyboard focus from the search field as
	much as a click outside me does, and only the last one closes me."

	self isKeyboardFocusInside
		ifTrue: [ self focusSearchField ]
		ifFalse: [ self delete ]! !

!FinderMorph class methodsFor: 'class initialization' stamp: 'MM 24/Sep/2020, 10:40:27 pm (UTC)'!
initialize

	self configureAsClassFinder.! !

!FinderMorph class methodsFor: 'class initialization private' stamp: 'HAW 11/Jul/2022, 11:13:08 pm (UTC)'!
configureAsClassFinder
	"self configureAsClassFinder"
	
	Preferences name: #classFinder category: #programming value: [ self open ].! !

!FinderMorph class methodsFor: 'current finder' stamp: 'MM 7/Sep/2020, 3:10:49 pm (UTC)'!
current
	^ CurrentFinder! !

!FinderMorph class methodsFor: 'current finder' stamp: 'MM 7/Sep/2020, 3:11:06 pm (UTC)'!
current: anInstance
	CurrentFinder _ anInstance! !

!FinderMorph class methodsFor: 'current finder' stamp: 'JEC 11/Jan/2026, 2:03:46 am (UTC)'!
deleteCurrent
	CurrentFinder := nil! !

!FinderMorph class methodsFor: 'instance creation' stamp: 'MM 7/Sep/2020, 2:42:47 pm (UTC)'!
open
	
	^ self newColumn 
		model: Finder withDefaultCatalogs;
		buildMorphicWindow;
		openInWorld! !

!FinderSearchBar methodsFor: 'key stroke handling' stamp: 'HAW 30/Jun/2020, 12:31:20 pm (UTC)'!
notifyQueryChanged

	self stopStepping.
	^ changeHandler value: self query! !

!FinderSearchBar methodsFor: 'key stroke handling' stamp: 'NPM 9/May/2020, 4:23:26 pm (UTC)'!
processKeyStroke
	
	dateAndTimeOfLastKeyStroke  := DateAndTime now.
	
	self startStepping! !

!FinderSearchBar methodsFor: 'key stroke handling' stamp: 'HAW 3/Nov/2021, 11:29:26 pm (UTC)'!
registerKeyStrokeHandler

	^ searchBox innerTextMorph 
		setProperty: #'keyStroke:'
		toValue: [ :event | self processKeyStroke ]! !

!FinderSearchBar methodsFor: 'key stroke handling' stamp: 'HAW 4/Nov/2021, 12:28:44 am (UTC)'!
unregisterKeyStrokeHandler

	searchBox innerTextMorph
		removeProperty: #'keyStroke:'! !

!FinderSearchBar methodsFor: 'initialization' stamp: 'HAW 18/Feb/2025, 8:06:18 pm (UTC)'!
initializeHandlingChangesWith: aChangeHandler handlingKeysPressedWith: aKeyPressedHandler notifyingChangesAfter: anAmountOfTime  
	
	changeHandler := aChangeHandler.
	keyPressedHandler := aKeyPressedHandler.
	timeToWaitBeforeNotifyingChanges := anAmountOfTime.
	
	self initializeSearchBox.
	self initializeSearchBoxEditor.
	self registerKeyStrokeHandler.! !

!FinderSearchBar methodsFor: 'initialization' stamp: 'HAW 18/Feb/2025, 8:05:13 pm (UTC)'!
initializeSearchBox

	searchBox := (FinderSearchTextModelMorph withText: '').
	searchBox askBeforeDiscardingEdits: false.
	searchBox color: Theme current finderSearchBarSearchBoxColor.
	
	self addMorphUseAll: searchBox.! !

!FinderSearchBar methodsFor: 'initialization' stamp: 'NPM 4/May/2020, 12:02:26 am (UTC)'!
initializeSearchBoxEditor
	
	^ SearchBoxEditor
		installOn: searchBox
		handlingKeyStrokesWith: keyPressedHandler
		! !

!FinderSearchBar methodsFor: 'accessing' stamp: 'NPM 3/May/2020, 11:22:39 pm (UTC)'!
query
	
	^ searchBox text asString! !

!FinderSearchBar methodsFor: 'accessing' stamp: 'HAW 3/Nov/2021, 11:29:36 pm (UTC)'!
searchField
	
	^ searchBox innerTextMorph ! !

!FinderSearchBar methodsFor: 'accessing' stamp: 'NPM 9/May/2020, 4:11:44 pm (UTC)'!
timeSinceLastKeyStroke

	^ DateAndTime now - dateAndTimeOfLastKeyStroke! !

!FinderSearchBar methodsFor: 'submorphs-add/remove' stamp: 'JEC 11/Jan/2026, 2:10:49 am (UTC)'!
clearDependencyAndEvents

	self unregisterKeyStrokeHandler.
	
	^ super clearDependencyAndEvents.! !

!FinderSearchBar methodsFor: 'stepping' stamp: 'HAW 30/Jun/2020, 12:31:12 pm (UTC)'!
stepAt: millisecondSinceLast

	self shouldNotifyQueryChanged
		ifTrue: [ self notifyQueryChanged ]
	
	

	
	! !

!FinderSearchBar methodsFor: 'testing' stamp: 'NPM 9/May/2020, 4:17:30 pm (UTC)'!
shouldNotifyQueryChanged

	^ self timeSinceLastKeyStroke >= timeToWaitBeforeNotifyingChanges! !

!FinderSearchBar methodsFor: 'testing' stamp: 'NPM 9/May/2020, 4:21:53 pm (UTC)'!
stepTime

	^ timeToWaitBeforeNotifyingChanges totalMilliseconds! !

!FinderSearchBar class methodsFor: 'instance creation' stamp: 'HAW 25/Jul/2025, 8:50:02 pm (UTC)'!
onChanged: aChangeHandler onKeyPressed: aKeyPressedHandler notifyingChangesAfter: anAmountOfTime  
	
	^ self newRow
		initializeHandlingChangesWith: aChangeHandler
		handlingKeysPressedWith: aKeyPressedHandler
		notifyingChangesAfter: anAmountOfTime! !

!FinderResultsListMorph methodsFor: 'events' stamp: 'MM 25/Sep/2020, 5:23:26 pm (UTC)'!
gainFocusFrom: aHand
! !

!FinderResultsListMorph methodsFor: 'events' stamp: 'MM 25/Sep/2020, 5:20:15 pm (UTC)'!
mouseEnter: event! !

!FinderResultsListMorph methodsFor: 'events' stamp: 'MM 25/Sep/2020, 5:21:34 pm (UTC)'!
mouseLeave: evt! !

!FinderResultsListMorph methodsFor: 'event handling testing' stamp: 'MM 25/Sep/2020, 5:15:57 pm (UTC)'!
handlesKeyboard
	^ false! !

!FinderSearchTextModelMorph methodsFor: 'initialization' stamp: 'MM 25/Sep/2020, 5:43:52 pm (UTC)'!
innerMorphClass
	^ FinderSearchInnerTextMorph! !

!FinderSearchTextModelMorph methodsFor: 'events' stamp: 'MM 25/Sep/2020, 5:48:53 pm (UTC)'!
mouseLeave: evt! !

!FinderSearchInnerTextMorph methodsFor: 'event handling' stamp: 'HAW 19/Sep/2026, 11:38:04 pm (UTC)'!
finder

	^self firstOwnerSuchThat: [ :anOwner | anOwner class = FinderMorph ]! !

!FinderSearchInnerTextMorph methodsFor: 'event handling' stamp: 'HAW 19/Sep/2026, 11:37:38 pm (UTC)'!
keyboardFocusChange: aBoolean

	aBoolean ifFalse: [ self finder searchFieldLostKeyboardFocus ]! !

!Catalog methodsFor: 'accessing' stamp: 'NPM 28/Mar/2020, 5:38:49 am (UTC)'!
name

	self subclassResponsibility! !

!Catalog methodsFor: 'searching' stamp: 'NPM 2/Apr/2020, 5:29:31 am (UTC)'!
processEmptySearchQuery
	
	^ OrderedCollection new! !

!Catalog methodsFor: 'searching' stamp: 'NPM 2/Apr/2020, 5:30:48 am (UTC)'!
processNonEmptySearchQuery: aQuery

	self subclassResponsibility! !

!Catalog methodsFor: 'searching' stamp: 'NPM 2/Apr/2020, 5:30:48 am (UTC)'!
search: aQuery

	^ aQuery
		ifEmpty: [ self processEmptySearchQuery ]
		ifNotEmpty: [ self processNonEmptySearchQuery: aQuery ]! !

!Catalog methodsFor: 'testing' stamp: 'NPM 29/Mar/2020, 4:40:37 am (UTC)'!
isNamed: aName 
	
	^ self name = aName! !

!Catalog methodsFor: 'browsing' stamp: 'NPM 2/Apr/2020, 5:25:34 am (UTC)'!
browse: aResult

	self subclassResponsibility! !

!Catalog class methodsFor: 'known instances' stamp: 'NPM 22/Apr/2020, 10:31:34 pm (UTC)'!
classNames
	
	^ ClassNamesCatalog create! !

!Catalog class methodsFor: 'known instances' stamp: 'NPM 4/Apr/2020, 5:01:12 am (UTC)'!
composite: children 
	
	^ CompositeCatalog withAll: children ! !

!Catalog class methodsFor: 'known instances' stamp: 'NPM 22/Apr/2020, 10:31:37 pm (UTC)'!
implementedSelectors
	
	^ ImplementedSelectorsCatalog create! !

!Catalog class methodsFor: 'known instances' stamp: 'NPM 22/Apr/2020, 10:31:40 pm (UTC)'!
implementors
	
	^ ImplementorsCatalog create! !

!Catalog class methodsFor: 'known instances' stamp: 'NPM 22/Apr/2020, 10:31:45 pm (UTC)'!
senders
	
	^ SendersCatalog create! !

!Catalog class methodsFor: 'known instances' stamp: 'NPM 22/Apr/2020, 10:31:51 pm (UTC)'!
systemCategories
	
	^ PackagesCatalog create! !

!Catalog class methodsFor: 'known instances' stamp: 'NPM 22/Apr/2020, 10:31:53 pm (UTC)'!
tools
	
	^ ToolsCatalog create! !

!Catalog class methodsFor: 'instance creation' stamp: 'NPM 4/Apr/2020, 5:01:53 am (UTC)'!
create
	
	^ self new! !

!ClassNamesCatalog methodsFor: 'accessing' stamp: 'NPM 28/Mar/2020, 5:39:01 am (UTC)'!
name
	
	^ 'Classes'! !

!ClassNamesCatalog methodsFor: 'searching' stamp: 'NPM 2/Apr/2020, 5:30:48 am (UTC)'!
processNonEmptySearchQuery: aQuery

	^ SubstringMatcher
		valueFiltering: Smalltalk classNames
		with: aQuery! !

!ClassNamesCatalog methodsFor: 'browsing' stamp: 'Ez3 20/Dec/2024, 6:03:24 am (UTC)'!
browse: aClassName 
	
	| class |
	class := (Smalltalk classNamed: aClassName).
	
	BrowserWindow
		fullOnClass: class selector: nil! !

!CompositeCatalog methodsFor: 'accessing' stamp: 'NPM 1/Apr/2020, 3:31:00 am (UTC)'!
name
	
	^ 'All'! !

!CompositeCatalog methodsFor: 'initialization' stamp: 'NPM 1/Apr/2020, 3:30:46 am (UTC)'!
initializeWithAll: children

	catalogs := children! !

!CompositeCatalog methodsFor: 'browsing' stamp: 'NPM 20/Apr/2020, 7:31:26 pm (UTC)'!
browse: aResult

	aResult browse
	! !

!CompositeCatalog methodsFor: 'searching' stamp: 'NPM 20/Apr/2020, 7:47:20 pm (UTC)'!
processNonEmptySearchQuery: aQuery
	
	^ catalogs
		inject: OrderedCollection new
		into: [ :results :catalog |
			results
				addAll: (self search: aQuery using: catalog);
				yourself ]! !

!CompositeCatalog methodsFor: 'searching' stamp: 'NPM 20/Apr/2020, 7:53:30 pm (UTC)'!
search: aQuery using: aCatalog
	
	^ (aCatalog search: aQuery)
		collect: [ :result | CompositeCatalogResult with: aCatalog from: result ]! !

!CompositeCatalog class methodsFor: 'instance creation' stamp: 'NPM 1/Apr/2020, 3:30:33 am (UTC)'!
withAll: children 
	
	^ self
		new
		initializeWithAll: children! !

!ImplementedSelectorsCatalog methodsFor: 'accessing' stamp: 'NPM 28/Mar/2020, 5:39:13 am (UTC)'!
name
	
	^ 'Selectors'! !

!ImplementedSelectorsCatalog methodsFor: 'searching' stamp: 'NPM 2/Apr/2020, 5:30:48 am (UTC)'!
processNonEmptySearchQuery: aQuery

	^ SubstringMatcher
		valueFiltering: Smalltalk allImplementedMessages
		with: aQuery! !

!ImplementedSelectorsCatalog methodsFor: 'browsing' stamp: 'NPM 2/Apr/2020, 5:25:34 am (UTC)'!
browse: aSelector

	Smalltalk browseAllImplementorsOf: aSelector! !

!ImplementorsCatalog methodsFor: 'accessing' stamp: 'NPM 28/Mar/2020, 5:47:38 am (UTC)'!
name
	
	^ 'Implementors'! !

!ImplementorsCatalog methodsFor: 'searching' stamp: 'NPM 24/May/2020, 4:40:14 pm (UTC)'!
processNonEmptySearchQuery: aQuery

	| implementors |
	implementors _ OrderedCollection new.
	
	Smalltalk allBehaviorsDo: [ :class | 
		class selectors
			select: [ :selector | selector includesSubstring: aQuery caseSensitive: false ]
			thenDo: [ :selector | implementors add: (MethodReference class: class selector: selector) ] ].
		
	^ resultsSorter value: implementors! !

!ImplementorsCatalog methodsFor: 'browsing' stamp: 'NPM 2/Apr/2020, 5:25:34 am (UTC)'!
browse: aMethodReference 

	HierarchyBrowserWindow
		onClass: aMethodReference methodClass
		selector: aMethodReference selector! !

!ImplementorsCatalog methodsFor: 'initialization' stamp: 'NPM 24/May/2020, 4:49:04 pm (UTC)'!
initialize

	super initialize.
	
	resultsSorter := ResultsSorter alphabetically, ResultsSorter bySelectorSize ! !

!PackagesCatalog methodsFor: 'accessing' stamp: 'NPM 28/Mar/2020, 6:12:11 am (UTC)'!
name
	
	^ 'System categories'! !

!PackagesCatalog methodsFor: 'searching' stamp: 'NPM 2/Apr/2020, 5:30:48 am (UTC)'!
processNonEmptySearchQuery: aQuery 
	
	^ SubstringMatcher
		valueFiltering: SystemOrganization categories
		with: aQuery! !

!PackagesCatalog methodsFor: 'browsing' stamp: 'HAW 27/Apr/2022, 3:21:12 pm (UTC)'!
browse: aSystemCategoryName 
	
	| newBrowser |
	
	newBrowser _ Browser new.
	newBrowser setSelectedSystemCategory: aSystemCategoryName.

	BrowserWindow open: newBrowser label: newBrowser defaultBrowserTitle! !

!SendersCatalog methodsFor: 'accessing' stamp: 'NPM 28/Mar/2020, 5:54:18 am (UTC)'!
name
	
	^ 'Senders'! !

!SendersCatalog methodsFor: 'searching' stamp: 'NPM 2/Apr/2020, 5:30:48 am (UTC)'!
processNonEmptySearchQuery: aQuery 
	
	^ (Smalltalk allCallsOn: aQuery asString asSymbol) asArray sort! !

!SendersCatalog methodsFor: 'browsing' stamp: 'NPM 2/Apr/2020, 5:25:34 am (UTC)'!
browse: aMethodReference 
	
	HierarchyBrowserWindow
		onClass: aMethodReference methodClass
		selector: aMethodReference selector! !

!ToolsCatalog methodsFor: 'accessing' stamp: 'NPM 31/Mar/2020, 10:09:53 pm (UTC)'!
name
	
	^ 'Tools'! !

!ToolsCatalog methodsFor: 'initialization' stamp: 'NPM 4/Apr/2020, 5:04:59 am (UTC)'!
initializeTools

	self
		menuItemsForOpenGroup
		sort: self blockForSortingItemsByLabel;
		do: [ :menuItem | self addToolFrom: menuItem ]! !

!ToolsCatalog methodsFor: 'initialization' stamp: 'NPM 4/Apr/2020, 5:05:05 am (UTC)'!
initializeWith: anImplementorsCatalog

	super initialize.
	
	implementorsCatalog := anImplementorsCatalog.
	tools := OrderedDictionary new.
	
	self initializeTools.! !

!ToolsCatalog methodsFor: 'browsing' stamp: 'NPM 2/Apr/2020, 5:25:34 am (UTC)'!
browse: aToolName

	(tools at: aToolName) value! !

!ToolsCatalog methodsFor: 'searching' stamp: 'NPM 2/Apr/2020, 5:30:08 am (UTC)'!
processEmptySearchQuery
	
	^ self toolNames! !

!ToolsCatalog methodsFor: 'searching' stamp: 'NPM 2/Apr/2020, 5:30:48 am (UTC)'!
processNonEmptySearchQuery: aQuery

	^ SubstringMatcher
		valueFiltering: self toolNames
		with: aQuery! !

!ToolsCatalog methodsFor: 'searching' stamp: 'NPM 2/Apr/2020, 5:29:52 am (UTC)'!
toolNames

	^ tools keysSortedSafely! !

!ToolsCatalog methodsFor: 'tools' stamp: 'HAW 28/Jul/2022, 10:03:52 pm (UTC)'!
addToolFrom: aMenuItem 
	
	tools
		at: (self labelFor: aMenuItem)
		put: [ (aMenuItem at: #object) perform: (aMenuItem at: #selector) ]! !

!ToolsCatalog methodsFor: 'tools' stamp: 'NPM 4/Apr/2020, 4:47:55 am (UTC)'!
blockForSortingItemsByLabel
	
	^ [ :aMenuItem :anotherMenuItem | (self labelFor: aMenuItem) <= (self labelFor: anotherMenuItem) ]! !

!ToolsCatalog methodsFor: 'tools' stamp: 'HAW 28/Jul/2022, 10:02:30 pm (UTC)'!
labelFor: aMenuItem

	^ aMenuItem at: #label! !

!ToolsCatalog methodsFor: 'tools' stamp: 'HAW 29/Apr/2025, 6:26:45 pm (UTC)'!
menuItemsForOpenGroup

	| openMenuOptions worldMenuOptions |
	
	worldMenuOptions := (ImplementorsCatalog new search: #worldMenuOptions)
		collect: [ :implementor |
			implementor compiledMethod
				valueWithReceiver: implementor methodClass theNonMetaClass 
				arguments: {} ].
	openMenuOptions := worldMenuOptions 
		inject: OrderedCollection new
		into: [ :result :options | 
			result addAll: (options select: [ :option | (option at: #submenuOf ifAbsent: [ '' ]) = TheWorldMenu openLabel ]).
			result ].
		
	^openMenuOptions ! !

!ToolsCatalog class methodsFor: 'instance creation' stamp: 'NPM 4/Apr/2020, 5:04:14 am (UTC)'!
create

	^ self
		new
		initializeWith: ImplementorsCatalog create! !

!CompositeCatalogResult methodsFor: 'browsing' stamp: 'NPM 20/Apr/2020, 7:31:40 pm (UTC)'!
browse
	
	catalog browse: result! !

!CompositeCatalogResult methodsFor: 'initialization' stamp: 'NPM 20/Apr/2020, 7:54:28 pm (UTC)'!
initializeWith: aResult from: aCatalog

	catalog := aCatalog.
	result := aResult.! !

!CompositeCatalogResult methodsFor: 'printing' stamp: 'NPM 20/Apr/2020, 7:24:02 pm (UTC)'!
catalogNamePrefix
	
	^ '[', catalog name, ']'! !

!CompositeCatalogResult methodsFor: 'printing' stamp: 'NPM 20/Apr/2020, 7:29:57 pm (UTC)'!
displayStringOrText

	^ self catalogNamePrefix, ' ', result displayStringOrText! !

!CompositeCatalogResult class methodsFor: 'instance creation' stamp: 'NPM 20/Apr/2020, 7:54:28 pm (UTC)'!
with: aResult from: aCatalog

	^ self
		new
		initializeWith: aCatalog
		from: aResult! !

!Finder methodsFor: 'catalogs' stamp: 'NPM 2/Apr/2020, 4:20:03 am (UTC)'!
catalogAfterSelectedCatalog

	^ (catalogs last = selectedCatalog)
		ifTrue: [ catalogs first ]
		ifFalse: [ catalogs at: (catalogs indexOf: selectedCatalog) + 1 ]! !

!Finder methodsFor: 'catalogs' stamp: 'NPM 2/Apr/2020, 4:19:40 am (UTC)'!
catalogBeforeSelectedCatalog

	^ (catalogs first = selectedCatalog)
		ifTrue: [ catalogs last ]
		ifFalse: [ catalogs at: (catalogs indexOf: selectedCatalog) - 1 ]! !

!Finder methodsFor: 'catalogs' stamp: 'NPM 2/Apr/2020, 3:29:28 am (UTC)'!
catalogsDo: aBlock
	
	catalogs do: aBlock! !

!Finder methodsFor: 'catalogs' stamp: 'NPM 29/Mar/2020, 4:05:43 pm (UTC)'!
changeSelectedCatalog: aCatalog

	self selectCatalog: aCatalog.
	self refreshSearchResults.
		
	! !

!Finder methodsFor: 'catalogs' stamp: 'NPM 29/Mar/2020, 4:03:03 pm (UTC)'!
isSelectedCatalog: aCatalog

	^ selectedCatalog = aCatalog
		
	! !

!Finder methodsFor: 'catalogs' stamp: 'NPM 2/Apr/2020, 4:04:44 am (UTC)'!
selectCatalog: aCatalog

	selectedCatalog := aCatalog.
	
	self changed: selectedCatalogChangeEvent.
	! !

!Finder methodsFor: 'catalogs' stamp: 'NPM 2/Apr/2020, 4:20:35 am (UTC)'!
selectNextCatalog
	
	self changeSelectedCatalog: self catalogAfterSelectedCatalog! !

!Finder methodsFor: 'catalogs' stamp: 'NPM 2/Apr/2020, 4:19:50 am (UTC)'!
selectPreviousCatalog
	
	self changeSelectedCatalog: self catalogBeforeSelectedCatalog! !

!Finder methodsFor: 'searching' stamp: 'NPM 2/Apr/2020, 5:33:58 am (UTC)'!
refreshSearchResults

	self searchForResults! !

!Finder methodsFor: 'searching' stamp: 'NPM 2/Apr/2020, 5:33:25 am (UTC)'!
search: aQuery

	currentQuery = aQuery
		ifTrue: [ ^ self ].

	currentQuery := aQuery.
	self searchForResults.
	! !

!Finder methodsFor: 'searching' stamp: 'NPM 2/Apr/2020, 5:33:29 am (UTC)'!
searchForResults

	results := selectedCatalog search: currentQuery.
	
	selectedResultIndex := results
		ifEmpty: 0
		ifNotEmpty: 1.
		
	self changed: #results.! !

!Finder methodsFor: 'initialization' stamp: 'NPM 29/Mar/2020, 4:59:55 am (UTC)'!
initializeCatalogs: aCollectionOfCatalogs

	catalogs := aCollectionOfCatalogs.
	selectedCatalog := catalogs first.! !

!Finder methodsFor: 'initialization' stamp: 'NPM 20/Apr/2020, 8:03:35 pm (UTC)'!
initializeEventNames

	selectedCatalogChangeEvent := #selectedCatalog.
	browseSelectedResultEvent := #browseSelectedResult.
	closeEvent := #close.! !

!Finder methodsFor: 'initialization' stamp: 'NPM 24/May/2020, 4:27:54 pm (UTC)'!
initializeResults
	
	currentQuery := ''.
	results := OrderedCollection new.
	selectedResultIndex := 0.! !

!Finder methodsFor: 'initialization' stamp: 'NPM 24/May/2020, 4:26:37 pm (UTC)'!
initializeWithAll: aCollectionOfCatalogs

	super initialize.
	
	self initializeResults.
	self initializeCatalogs: aCollectionOfCatalogs.	
	self initializeEventNames.! !

!Finder methodsFor: 'events-old protocol' stamp: 'NPM 2/Apr/2020, 4:05:06 am (UTC)'!
isSelectedCatalogChange: anEvent ifTrue: aBlock

	anEvent = selectedCatalogChangeEvent
		ifTrue: aBlock! !

!Finder methodsFor: 'results' stamp: 'HAW 30/Jun/2020, 12:32:42 pm (UTC)'!
browseSelectedResult
	
	| selected |
	
	selected := results at: selectedResultIndex ifAbsent: [^self].
	selectedCatalog browse: selected.
	
	self changed: browseSelectedResultEvent! !

!Finder methodsFor: 'results' stamp: 'NPM 20/Apr/2020, 8:03:53 pm (UTC)'!
close
	
	self changed: closeEvent! !

!Finder methodsFor: 'results' stamp: 'NPM 28/Mar/2020, 4:43:57 am (UTC)'!
results
	
	^ results! !

!Finder methodsFor: 'results' stamp: 'NPM 2/Apr/2020, 4:09:49 am (UTC)'!
selectNextResult
	
	results ifEmpty: [ ^ self ].
	
	selectedResultIndex = results size
		ifTrue: [ self selectedResultIndex: 1 ]
		ifFalse: [ self selectedResultIndex: selectedResultIndex + 1].! !

!Finder methodsFor: 'results' stamp: 'NPM 27/Apr/2020, 1:20:18 am (UTC)'!
selectPreviousResult

	results ifEmpty: [ ^ self ].
	
	selectedResultIndex = 1
		ifTrue: [ self selectedResultIndex: results size ]
		ifFalse: [ self selectedResultIndex: selectedResultIndex - 1].
	! !

!Finder methodsFor: 'results' stamp: 'NPM 28/Mar/2020, 4:44:05 am (UTC)'!
selectedResultIndex
	
	^ selectedResultIndex! !

!Finder methodsFor: 'results' stamp: 'NPM 2/Apr/2020, 4:07:20 am (UTC)'!
selectedResultIndex: anIndex 
	
	selectedResultIndex _ anIndex.
	self changed: #selectedResultIndex.! !

!Finder class methodsFor: 'instance creation' stamp: 'MM 8/Sep/2020, 3:10:07 pm (UTC)'!
availableCatalogs

	^ OrderedCollection new
		add: Catalog classNames;
		add: Catalog implementors;
		add: Catalog implementedSelectors;
		add: Catalog senders;
		add: Catalog systemCategories;
		add: Catalog tools;
		yourself! !

!Finder class methodsFor: 'instance creation' stamp: 'NPM 22/Apr/2020, 10:35:35 pm (UTC)'!
defaultCatalogs
	
	| catalogs |
	catalogs := self availableCatalogs.
		
	catalogs addFirst: (Catalog composite: catalogs copy).
	
	^ catalogs! !

!Finder class methodsFor: 'instance creation' stamp: 'NPM 22/Apr/2020, 10:33:33 pm (UTC)'!
withDefaultCatalogs
	
	^ self
		new
		initializeWithAll: self defaultCatalogs! !

!ResultsSorter methodsFor: 'evaluating' stamp: 'NPM 24/May/2020, 5:02:25 pm (UTC)'!
value: results
	
	self subclassResponsibility! !

!ResultsSorter methodsFor: 'combining' stamp: 'NPM 24/May/2020, 5:11:31 pm (UTC)'!
, other
	
	^ SequentialResultsSorter with: self with: other! !

!ResultsSorter class methodsFor: 'known instances' stamp: 'NPM 24/May/2020, 4:40:30 pm (UTC)'!
alphabetically
	
	^ AlphabeticalResultsSorter new! !

!ResultsSorter class methodsFor: 'known instances' stamp: 'NPM 24/May/2020, 5:09:38 pm (UTC)'!
bySelectorSize
	
	^ SelectorSizeResultsSorter new! !

!ResultsSorter class methodsFor: 'known instances' stamp: 'NPM 24/May/2020, 5:09:28 pm (UTC)'!
bySize
	
	^ SizeResultsSorter new! !

!AlphabeticalResultsSorter methodsFor: 'evaluating' stamp: 'NPM 24/May/2020, 4:46:23 pm (UTC)'!
value: results

	^ results sort: [ :result :otherResult | result <= otherResult ]! !

!SelectorSizeResultsSorter methodsFor: 'evaluating' stamp: 'NPM 24/May/2020, 5:09:59 pm (UTC)'!
value: results

	^ results sort: [ :result :otherResult | result selector size <= otherResult selector size ]! !

!SequentialResultsSorter methodsFor: 'initialization' stamp: 'NPM 24/May/2020, 5:03:38 pm (UTC)'!
initializeWithAll: aCollectionOfResultsSorters 
	
	resultsSorters := aCollectionOfResultsSorters.! !

!SequentialResultsSorter methodsFor: 'evaluating' stamp: 'NPM 24/May/2020, 5:03:21 pm (UTC)'!
value: results
	
	^ resultsSorters
		inject: results
		into: [ :partiallySortedResults :resultsSorter | resultsSorter value: partiallySortedResults ]! !

!SequentialResultsSorter class methodsFor: 'instance creation' stamp: 'NPM 24/May/2020, 4:43:10 pm (UTC)'!
with: firstResultsSorter with: secondResultsSorter 
	
	^ self
		new
		initializeWithAll: (Array with: firstResultsSorter with: secondResultsSorter)! !

!SizeResultsSorter methodsFor: 'evaluating' stamp: 'NPM 24/May/2020, 5:08:43 pm (UTC)'!
value: results

	^ results sort: [ :result :otherResult | result size <= otherResult size ]! !

!SubstringMatcher methodsFor: 'filtering' stamp: 'NPM 2/Apr/2020, 4:25:02 am (UTC)'!
filterCollection

	^ collection select: [ :item | item includesSubstring: substring caseSensitive: false ]! !

!SubstringMatcher methodsFor: 'evaluating' stamp: 'NPM 24/May/2020, 4:59:04 pm (UTC)'!
value

	^ resultsSorter value: (self filterCollection asOrderedCollection)! !

!SubstringMatcher methodsFor: 'initialization' stamp: 'NPM 24/May/2020, 4:57:53 pm (UTC)'!
initializeFiltering: aCollection with: aSubstring 
	
	collection := aCollection.
	substring := aSubstring.
	resultsSorter := ResultsSorter alphabetically, ResultsSorter bySize.! !

!SubstringMatcher class methodsFor: 'evaluating' stamp: 'NPM 2/Apr/2020, 4:25:22 am (UTC)'!
valueFiltering: aCollection with: aSubstring 
	
	^ (self forFiltering: aCollection with: aSubstring)
		value
		! !

!SubstringMatcher class methodsFor: 'instance creation' stamp: 'NPM 2/Apr/2020, 4:25:18 am (UTC)'!
forFiltering: aCollection with: aSubstring 
	
	^ self
		new
		initializeFiltering: aCollection
		with: aSubstring ! !

!CatalogButton methodsFor: 'evaluating' stamp: 'NPM 29/Mar/2020, 4:13:43 pm (UTC)'!
value
	
	model changeSelectedCatalog: catalog! !

!CatalogButton methodsFor: 'events-old protocol' stamp: 'NPM 2/Apr/2020, 3:45:07 am (UTC)'!
handleSelectedCatalogChange: anEvent

	^ model
		isSelectedCatalogChange: anEvent
		ifTrue: [ self changed: #isSelected ]! !

!CatalogButton methodsFor: 'events-old protocol' stamp: 'NPM 2/Apr/2020, 3:45:01 am (UTC)'!
update: anEvent

	super update: anEvent.
	
	self handleSelectedCatalogChange: anEvent! !

!CatalogButton methodsFor: 'initialization' stamp: 'NPM 2/Apr/2020, 3:48:35 am (UTC)'!
initializeFor: aCatalog model: aFinder 
	
	catalog := aCatalog .
	model := aFinder.
	model addDependent: self.! !

!CatalogButton methodsFor: 'testing' stamp: 'NPM 29/Mar/2020, 4:02:57 pm (UTC)'!
isSelected

	^ model isSelectedCatalog: catalog! !

!CatalogButton class methodsFor: 'instance creation' stamp: 'NPM 2/Apr/2020, 3:48:35 am (UTC)'!
for: aCatalog model: aFinder 
	
	^ self
		new
		initializeFor: aCatalog
		model: aFinder ! !

!SearchBoxEditor methodsFor: 'event handling' stamp: 'HAW 9/Mar/2021, 5:42:15 pm (UTC)'!
forwardToEditor: aKeyboardEvent

	textEditor processKeystrokeEvent: aKeyboardEvent! !

!SearchBoxEditor methodsFor: 'event handling' stamp: 'NPM 3/May/2020, 11:52:59 pm (UTC)'!
handleKeyStroke: aKeyboardEvent

	^ keyStrokeHandler value: aKeyboardEvent
! !

!SearchBoxEditor methodsFor: 'event handling' stamp: 'HAW 9/Mar/2021, 5:49:05 pm (UTC)'!
processKeystrokeEvent: aKeyboardEvent

	(self handleKeyStroke: aKeyboardEvent)
		ifTrue: [ ^ self ].
	
	self forwardToEditor: aKeyboardEvent! !

!SearchBoxEditor methodsFor: 'initialization' stamp: 'NPM 3/May/2020, 11:53:48 pm (UTC)'!
initializeFor: aTextEditor handlingKeyStrokesWith: aKeyStrokeHandler 

	textEditor := aTextEditor.
	keyStrokeHandler := aKeyStrokeHandler.! !

!SearchBoxEditor methodsFor: 'error handling' stamp: 'NPM 2/Apr/2020, 3:39:43 am (UTC)'!
doesNotUnderstand: aMessage

	^ aMessage sendTo: textEditor! !

!SearchBoxEditor class methodsFor: 'installing' stamp: 'HAW 3/Nov/2021, 11:29:15 pm (UTC)'!
installOn: aTextModelMorph handlingKeyStrokesWith: aKeyStrokeHandler  
	
	| newEditor textMorph |
	textMorph _ aTextModelMorph innerTextMorph.
	
	newEditor _ self
		forEditor: textMorph editor
		handlingKeyStrokesWith: aKeyStrokeHandler
		.
	
	textMorph
		instVarNamed: #editor
		put: newEditor.
	! !

!SearchBoxEditor class methodsFor: 'instance creation' stamp: 'NPM 3/May/2020, 11:55:32 pm (UTC)'!
forEditor: aTextEditor handlingKeyStrokesWith: aKeyStrokeHandler  
	
	^ self
		new
		initializeFor: aTextEditor
		handlingKeyStrokesWith: aKeyStrokeHandler
		! !

!FinderMorphTest methodsFor: 'test support' stamp: 'HAW 19/Sep/2026, 11:38:04 pm (UTC)'!
click: aButton

	| position localPosition |

	finder world doOneMinimalCycleNow.
	position := aButton displayBounds center.
	localPosition := aButton morphExtent // 2.

	aButton processMouseDown: (self mouseDownAt: position) localPosition: localPosition.
	aButton processMouseUp: (self mouseUpAt: position) localPosition: localPosition! !

!FinderMorphTest methodsFor: 'test support' stamp: 'HAW 19/Sep/2026, 11:36:24 pm (UTC)'!
closeFinder

	finder isInWorld ifTrue: [ finder delete ]! !

!FinderMorphTest methodsFor: 'test support' stamp: 'HAW 19/Sep/2026, 11:48:52 pm (UTC)'!
inUIProcess: aBlock

	"A finder asks for the world of the process running it, which only the UI process has. An error there
	is brought back here, since a debugger on the UI process would leave this one waiting."

	| finished answer errorDescriptions |

	(UISupervisor isUIProcess: Processor activeProcess) ifTrue: [ ^aBlock value ].

	finished := Semaphore new.
	errorDescriptions := OrderedCollection new.
	UISupervisor whenUIinSafeState: [
		[ answer := aBlock on: Error do: [ :anError | errorDescriptions add: anError description ]]
			ensure: [ finished signal ]].
	finished wait.
	errorDescriptions do: [ :anErrorDescription | self error: anErrorDescription ].

	^answer! !

!FinderMorphTest methodsFor: 'test support' stamp: 'HAW 19/Sep/2026, 11:48:52 pm (UTC)'!
isCatalogButton: aMorph

	^(aMorph is: #PluggableButtonMorph) and: [ aMorph model isKindOf: CatalogButton ]! !

!FinderMorphTest methodsFor: 'test support' stamp: 'HAW 19/Sep/2026, 11:38:04 pm (UTC)'!
mouseDownAt: aPosition

	^MouseButtonEvent new
		mouseDownPosition: aPosition
		which: InputSensor mouseButton1
		buttons: InputSensor mouseButton1
		hand: hand
		stamp: Time millisecondClockValue! !

!FinderMorphTest methodsFor: 'test support' stamp: 'HAW 19/Sep/2026, 11:38:04 pm (UTC)'!
mouseUpAt: aPosition

	^MouseButtonEvent new
		mouseUpPosition: aPosition
		which: InputSensor mouseButton1
		buttons: 0
		hand: hand
		stamp: Time millisecondClockValue! !

!FinderMorphTest methodsFor: 'test support' stamp: 'HAW 19/Sep/2026, 11:36:24 pm (UTC)'!
openFinder

	FinderMorph open.
	finder := FinderMorph current.
	hand := finder world activeHand! !

!FinderMorphTest methodsFor: 'test support' stamp: 'HAW 19/Sep/2026, 11:48:52 pm (UTC)'!
unselectedToolbarButton

	^finder
		findDeepSubmorphThat: [ :aMorph | (self isCatalogButton: aMorph) and: [ aMorph model isSelected not ]]
		ifAbsent: [ self error: 'The finder has no unselected toolbar button' ]! !

!FinderMorphTest methodsFor: 'tests' stamp: 'HAW 19/Sep/2026, 11:38:04 pm (UTC)'!
testClickingToolbarButtonKeepsFinderOpen

	| isOpen |

	isOpen := self inUIProcess: [
		self openFinder.
		[ hand newKeyboardFocusToOrOwnerOf: self unselectedToolbarButton.
		finder isInWorld ] ensure: [ self closeFinder ]].

	self assert: isOpen! !

!FinderMorphTest methodsFor: 'tests' stamp: 'HAW 19/Sep/2026, 11:38:04 pm (UTC)'!
testClickingToolbarButtonLeavesKeyboardFocusOnSearchField

	| isSearchFieldFocused |

	isSearchFieldFocused := self inUIProcess: [
		self openFinder.
		[ hand newKeyboardFocusToOrOwnerOf: self unselectedToolbarButton.
		hand keyboardFocus = finder submorphToFocusKeyboard ] ensure: [ self closeFinder ]].

	self assert: isSearchFieldFocused! !

!FinderMorphTest methodsFor: 'tests' stamp: 'HAW 19/Sep/2026, 11:38:04 pm (UTC)'!
testClickingToolbarButtonSelectsItsCatalog

	| isSelected |

	isSelected := self inUIProcess: [
		self openFinder.
		[ | button |
		button := self unselectedToolbarButton.
		self click: button.
		finder isInWorld and: [ button model isSelected ]] ensure: [ self closeFinder ]].

	self assert: isSelected! !

!FinderMorphTest methodsFor: 'tests' stamp: 'HAW 19/Sep/2026, 11:36:24 pm (UTC)'!
testGivingKeyboardFocusOutsideFinderClosesIt

	| isOpen |

	isOpen := self inUIProcess: [
		self openFinder.
		[ hand newKeyboardFocus: finder world.
		finder isInWorld ] ensure: [ self closeFinder ]].

	self deny: isOpen! !

!Theme methodsFor: '*Tools-Finder-UI' stamp: 'PTP 2/Nov/2022, 3:51:25 pm (UTC)'!
finderSearchBarResultsColor
	"Answer the FinderSearchBar color."

	^ self paneBackgroundFrom: self defaultWindowColor lighter.! !

!Theme methodsFor: '*Tools-Finder-UI' stamp: 'PTP 2/Nov/2022, 3:54:26 pm (UTC)'!
finderSearchBarSearchBoxColor
	"Answer the FinderSearchBar results color."

	^ self paneBackgroundFrom: self defaultWindowColor lighter lighter.! !

!Theme methodsFor: '*Tools-Finder-UI' stamp: 'PTP 2/Nov/2022, 3:43:06 pm (UTC)'!
finderSearchBarToolbarButtonColor
	"Answer the FinderSearchBar toolbar button color."

	^ self buttonColorFrom: self defaultWindowColor.! !

!Theme methodsFor: '*Tools-Finder-UI' stamp: 'PTP 2/Nov/2022, 3:44:42 pm (UTC)'!
finderSearchBarToolbarColor
	"Answer the FinderSearchBar toolbar button color."

	^ self buttonColorFrom: self defaultWindowColor.! !

!BrightColorTheme methodsFor: '*Tools-Finder-UI' stamp: 'PTP 2/Nov/2022, 3:51:06 pm (UTC)'!
finderSearchBarResultsColor
	"Answer the FinderSearchBar color."

	^ `Color veryVeryLightGray`! !

!BrightColorTheme methodsFor: '*Tools-Finder-UI' stamp: 'PTP 2/Nov/2022, 3:54:01 pm (UTC)'!
finderSearchBarSearchBoxColor
	"Answer the FinderSearchBar results color."

	^ self textPane.! !

!BrightColorTheme methodsFor: '*Tools-Finder-UI' stamp: 'PTP 2/Nov/2022, 3:42:08 pm (UTC)'!
finderSearchBarToolbarButtonColor
	"Answer the FinderSearchBar toolbar button color."

	^ `Color veryLightGray`.! !

!BrightColorTheme methodsFor: '*Tools-Finder-UI' stamp: 'HAW 22/Dec/2022, 7:55:22 pm (UTC)'!
finderSearchBarToolbarColor
	"Answer the FinderSearchBar toolbar button color."

	^ `Color veryVeryLightGray`! !
FinderMorph initialize!
