Class {
	#name : #ListOfSingleValuesTest,
	#superclass : #TestCase,
	#category : #'BCDashTest-Data'
}

{ #category : #tests }
ListOfSingleValuesTest >> testAlternateCreation [
	| line |
	line := BCListOfSingleValues new 	
		data: { 22  . 75  . 55 };
		labels:  { 'low' .  'high' .  'middle'}.
	self assert: line maxValue equals: 75
]

{ #category : #tests }
ListOfSingleValuesTest >> testBrokenAlternateCreation [
	| line |
	line := BCListOfSingleValues new 	
		data: { 22  . 75  . 55 }
		labels:  { 'low' .  'high' .  'middle'}.
	self assert: line maxValue equals: 75
]

{ #category : #tests }
ListOfSingleValuesTest >> testForcingAllInformationAlternateCreation [
	| line |
	line := BCListOfSingleValues new 	
		data: { 22  . 75  . 55 }
		labels:  { 'low' .  'high' .  'middle'}.
	self assert: line maxValue equals: 75
]

{ #category : #tests }
ListOfSingleValuesTest >> testLabelsWhenNoLabelsAreSpecified [
	| line |
	line := BCListOfSingleValues new data: { 22 . 75 . 55 }.
	self assert: line keys equals: #( '22' '75' '55')
]

{ #category : #tests }
ListOfSingleValuesTest >> testLineKeys [
	| line |
	line := BCListOfSingleValues new 	
		labelledData: { 22 -> 'low' . 75 -> 'high' . 55 -> 'middle'}.
	self assert: line keys equals: #('low' 'high' 'middle')
]

{ #category : #tests }
ListOfSingleValuesTest >> testLineMaxValue [ 
	| line |
	line := BCListOfSingleValues new 	
		labelledData: { 22 -> 'low' . 75 -> 'high' . 55 -> 'middle'}.
	self assert: line maxValue equals: 75
]

{ #category : #tests }
ListOfSingleValuesTest >> testLineMinValue [ 
	| line |
	line := BCListOfSingleValues new 	
		labelledData: { 22 -> 'low' . 75 -> 'high' . 55 -> 'middle'}.
	self assert: line minValue equals: 22
]

{ #category : #tests }
ListOfSingleValuesTest >> testMostFrequentValue [
	| line |
	line := BCListOfSingleValues new data: { 22  . 75  . 55 . 75 .55 .75}.
	self assert: line mostFrequentValue equals: 75
]

{ #category : #tests }
ListOfSingleValuesTest >> testNoLabelAlternateCreation [
	| line |
	line := BCListOfSingleValues new data: { 22  . 75  . 55 }.
	self assert: line maxValue equals: 75
]