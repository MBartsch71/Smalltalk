Object subclass: #FizzBuzz
	instanceVariableNames: 'value result'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FizzBuzz'!

!FizzBuzz methodsFor: 'as yet unclassified' stamp: 'MBH 9/8/2020 20:51'!
getResult
	^result! !

!FizzBuzz methodsFor: 'as yet unclassified' stamp: 'MBH 9/8/2020 20:49'!
setValue: anInteger
	value := anInteger.
	result := FizzBuzzChecker new checkValue: value.
	
	! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

FizzBuzz class
	instanceVariableNames: ''!

!FizzBuzz class methodsFor: 'as yet unclassified' stamp: 'MBH 9/8/2020 20:50'!
fizzbuzzTest
	|fizzbuzz|
	fizzbuzz := FizzBuzz newFizzBuzz: 25.
	^fizzbuzz .
	
	! !

!FizzBuzz class methodsFor: 'as yet unclassified' stamp: 'MBH 9/8/2020 19:39'!
newFizzBuzz: anInteger
	^self new setValue: anInteger
! !


Object subclass: #FizzBuzzChecker
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FizzBuzz'!

!FizzBuzzChecker methodsFor: 'as yet unclassified' stamp: 'MBH 9/8/2020 21:01'!
checkValue: anInteger
	anInteger <= 0 ifTrue: [^anInteger].
	anInteger \\ 15 = 0 ifTrue: [^'FizzBuzz'].
	anInteger \\ 5   = 0 ifTrue: [^'Buzz'].
	anInteger \\ 3   = 0 ifTrue: [^'Fizz'].
	^anInteger.! !


Object subclass: #FizzBuzzRunner
	instanceVariableNames: 'currentFizzBuzz'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FizzBuzz'!

!FizzBuzzRunner methodsFor: 'as yet unclassified' stamp: 'MBH 9/8/2020 20:59'!
start: aStartInteger end: anEndInteger
		aStartInteger to: anEndInteger by: 1 do: [ :i |
		currentFizzBuzz := FizzBuzz newFizzBuzz: i.
		Transcript show: currentFizzBuzz getResult;cr ].
		! !
