Class {
	#name : #GridBtn,
	#superclass : #ComponentGrid,
	#category : #BCDash
}

{ #category : #rendering }
GridBtn >> containerID: id [
	^ self new containerID: id;
	yourself 
]

{ #category : #rendering }
GridBtn >> renderContentOn: html [
	html mdlButton
		id: html nextId;
		fab;
		colored;
		with: '+'.
	html mdlDialog
		openButtonId: html lastId;
		with: [ html render: GridDialog  new. ]
]