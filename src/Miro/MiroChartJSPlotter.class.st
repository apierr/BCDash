Class {
	#name : #MiroChartJSPlotter,
	#superclass : #Object,
	#category : #'Miro-PlottingStrategies'
}

{ #category : #plotting }
MiroChartJSPlotter >> plot: aMiroPlot [

	^ aMiroPlot plotOnChartJs
]
