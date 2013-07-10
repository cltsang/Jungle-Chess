<?xml version="1.0"?>

<st-source>
<time-stamp>From VisualWorks® Personal Use Edition, 7.8 of 2011年3月30日 on 2012年3月25日 at 下午09時33分13秒</time-stamp>


<component-created>
<name>JungleChess</name> <type>package</type>
</component-created><!-- Package JungleChess* -->


<component-created>
<name>JungleChess</name> <type>package</type>
</component-created>

<class>
<name>ChessPiece</name>
<environment>Smalltalk</environment>
<super>UI.Model</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>owner square canBeEatenBy fig </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>JungleChess</package>
</attributes>
</class>

<class>
<name>Jaguar</name>
<environment>Smalltalk</environment>
<super>ChessPiece</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>JungleChess</package>
</attributes>
</class>

<class>
<name>JungleGameView</name>
<environment>Smalltalk</environment>
<super>UI.CompositeView</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>JungleChess</package>
</attributes>
</class>

<class>
<name>Cat</name>
<environment>Smalltalk</environment>
<super>ChessPiece</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>JungleChess</package>
</attributes>
</class>

<class>
<name>Square</name>
<environment>Smalltalk</environment>
<super>UI.Model</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>chess coordinate fig selected corrdinate </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>JungleChess</package>
</attributes>
</class>

<class>
<name>PrivateSquare</name>
<environment>Smalltalk</environment>
<super>Square</super>
<private>true</private>
<indexed-type>none</indexed-type>
<inst-vars>owner </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>JungleChess</package>
</attributes>
</class>

<class>
<name>Trap</name>
<environment>Smalltalk</environment>
<super>PrivateSquare</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>JungleChess</package>
</attributes>
</class>

<class>
<name>Dog</name>
<environment>Smalltalk</environment>
<super>ChessPiece</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>JungleChess</package>
</attributes>
</class>

<class>
<name>SquareView</name>
<environment>Smalltalk</environment>
<super>UI.View</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>chessImage squareImage selected </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>JungleChess</package>
</attributes>
</class>

<class>
<name>JungleGameController</name>
<environment>Smalltalk</environment>
<super>UI.Controller</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>selected </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>JungleChess</package>
</attributes>
</class>

<class>
<name>Lion</name>
<environment>Smalltalk</environment>
<super>ChessPiece</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>JungleChess</package>
</attributes>
</class>

<class>
<name>River</name>
<environment>Smalltalk</environment>
<super>Square</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>JungleChess</package>
</attributes>
</class>

<class>
<name>Player</name>
<environment>Smalltalk</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>name </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>JungleChess</package>
</attributes>
</class>

<class>
<name>Wolf</name>
<environment>Smalltalk</environment>
<super>ChessPiece</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>JungleChess</package>
</attributes>
</class>

<class>
<name>Ground</name>
<environment>Smalltalk</environment>
<super>Square</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>JungleChess</package>
</attributes>
</class>

<class>
<name>JungleGame</name>
<environment>Smalltalk</environment>
<super>UI.Model</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>board currentPlayer nextPlayer width height winner player1RemainChess player2RemainChess checkRemainChess jungleChessBoard controller extent </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>JungleChess</package>
</attributes>
</class>

<comment>
<class-id>JungleGame</class-id>
<body></body>
</comment>

<class>
<name>Elephant</name>
<environment>Smalltalk</environment>
<super>ChessPiece</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>JungleChess</package>
</attributes>
</class>

<class>
<name>JungleChessBoard</name>
<environment>Smalltalk</environment>
<super>UI.ApplicationModel</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>jungleGame jungleGameView message </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>JungleChess</package>
</attributes>
</class>

<class>
<name>Tiger</name>
<environment>Smalltalk</environment>
<super>ChessPiece</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>JungleChess</package>
</attributes>
</class>

<class>
<name>SquareController</name>
<environment>Smalltalk</environment>
<super>UI.Controller</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>JungleChess</package>
</attributes>
</class>

<class>
<name>Den</name>
<environment>Smalltalk</environment>
<super>PrivateSquare</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>JungleChess</package>
</attributes>
</class>

<class>
<name>Rat</name>
<environment>Smalltalk</environment>
<super>ChessPiece</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>JungleChess</package>
</attributes>
</class>

<methods>
<class-id>JungleGame class</class-id> <category>instance creation</category>

<body package="JungleChess" selector="new">new	"Answer a newly created and initialized instance."	^super new initialize</body>

<body package="JungleChess" selector="extent:">extent: aPoint		^super new extent: aPoint.</body>
</methods>


<methods>
<class-id>JungleGame</class-id> <category>accessing</category>

<body package="JungleChess" selector="width:">width: anObject	width := anObject</body>

<body package="JungleChess" selector="nextPlayer">nextPlayer	^nextPlayer</body>

<body package="JungleChess" selector="currentPlayer">currentPlayer	^currentPlayer</body>

<body package="JungleChess" selector="controller:">controller: aController	controller := aController</body>

<body package="JungleChess" selector="height:">height: anObject	height := anObject</body>

<body package="JungleChess" selector="jungleChessBoard:">jungleChessBoard: aJungleChessBoard	jungleChessBoard := aJungleChessBoard</body>

<body package="JungleChess" selector="nextPlayer:">nextPlayer: anObject	nextPlayer := anObject</body>

<body package="JungleChess" selector="jungleChessBoard">jungleChessBoard	^jungleChessBoard</body>

<body package="JungleChess" selector="currentPlayer:">currentPlayer: anObject	currentPlayer := anObject</body>

<body package="JungleChess" selector="at:">at: aPoint	^(board at: aPoint y) at: aPoint x.</body>

<body package="JungleChess" selector="board">board	^board</body>

<body package="JungleChess" selector="board:">board: anObject	board := anObject</body>

<body package="JungleChess" selector="width">width	^width</body>

<body package="JungleChess" selector="height">height	^height</body>

<body package="JungleChess" selector="controller">controller	^controller</body>
</methods>

<methods>
<class-id>JungleGame</class-id> <category>initialize-release</category>

<body package="JungleChess" selector="player2RemainChess">player2RemainChess	^player2RemainChess.</body>

<body package="JungleChess" selector="extent:">extent: aPoint| player1 player2 aPiece |	super initialize.		"initialize player"	player1 := (Player new).	player1 name: '1'.	player2 := (Player new).	player2 name: '2'.	currentPlayer:= player2.	nextPlayer:= player1. 		player1RemainChess:= 8.	player2RemainChess:= 8.		"initialize winner"	winner:= nil.		"initialize the board"	width := aPoint x.	height := aPoint y.	board := Array new: height.		1 to: height do: [:y |			board at: y put: (Array new: width).			1 to: width do: [:x |				(board at: y) at: x put: Square new.				((board at: y) at: x) coordinate: x@y.				(((x=2) | (x=3)) &amp; ( (y &lt; 7) &amp; (y &gt; 3)))ifTrue:[					(board at: y) at: x put: River new .					((board at: y) at: x) coordinate: x@y.				].				(((x=5) | (x=6)) &amp; ( (y &lt; 7) &amp; (y &gt; 3)))ifTrue:[					(board at: y) at: x put: River new.					((board at: y) at: x) coordinate: x@y.				].			]	].		"initialize all chess"	(board at: 1) at: 4 put: Den new.	((board at: 1) at: 4) coordinate: 4@1.	((board at: 1) at: 4) owner: player1.	(board at: 9) at: 4 put: Den new.	((board at: 9) at: 4) coordinate: 4@9.	((board at: 9) at: 4) owner: player2.	(board at: 1) at: 3 put: Trap new.	((board at: 1) at: 3) coordinate: 3@1.	((board at: 1) at: 3) owner: player1.	(board at: 1) at: 5 put: Trap new.	((board at: 1) at: 5) coordinate: 5@1.	((board at: 1) at: 5) owner: player1.	(board at: 2) at: 4 put: Trap new.	((board at: 2) at: 4) coordinate: 4@2.	((board at: 2) at: 4) owner: player1.	(board at: 8) at: 4 put: Trap new.	((board at: 8) at: 4) coordinate: 4@8.	((board at: 8) at: 4) owner: player2.	(board at: 9) at: 3 put: Trap new.	((board at: 9) at: 3) coordinate: 3@9.	((board at: 9) at: 3) owner: player2.	(board at: 9) at: 5 put: Trap new.	((board at: 9) at: 5) coordinate: 5@9.	((board at: 9) at: 5) owner: player2.    aPiece := Lion new.    aPiece owner: player1.	(((board at: 1) at: 1)) chess: aPiece.    aPiece := Tiger new.    aPiece owner: player1.	(((board at: 1) at: 7)) chess: aPiece.    aPiece := Dog new.    aPiece owner: player1.	(((board at: 2) at: 2)) chess: aPiece.    aPiece := Cat new.    aPiece owner: player1.	(((board at: 2) at: 6)) chess: aPiece.    aPiece := Rat new.    aPiece owner: player1.	(((board at: 3) at: 1)) chess: aPiece.    aPiece := Jaguar new.    aPiece owner: player1.	(((board at: 3) at: 3)) chess: aPiece.    aPiece := Wolf new.    aPiece owner: player1.	(((board at: 3) at: 5)) chess: aPiece.    aPiece := Elephant new.    aPiece owner: player1.	(((board at: 3) at: 7)) chess: aPiece.    aPiece := Elephant new.    aPiece owner: player2.	(((board at: 7) at: 1)) chess: aPiece.    aPiece := Wolf new.    aPiece owner: player2.	(((board at: 7) at: 3)) chess: aPiece.    aPiece := Jaguar new.    aPiece owner: player2.	(((board at: 7) at: 5)) chess: aPiece.    aPiece := Rat new.    aPiece owner: player2.	(((board at: 7) at: 7)) chess: aPiece.    aPiece := Cat new.    aPiece owner: player2.	(((board at: 8) at: 2)) chess: aPiece.    aPiece := Dog new.    aPiece owner: player2.	(((board at: 8) at: 6)) chess: aPiece.    aPiece := Tiger new.    aPiece owner: player2.	(((board at: 9) at: 1)) chess: aPiece.    aPiece := Lion new.    aPiece owner: player2.	(((board at: 9) at: 7)) chess: aPiece.</body>

<body package="JungleChess" selector="winner:">winner:aPlayer	winner:= aPlayer.</body>

<body package="JungleChess" selector="player1RemainChess:">player1RemainChess:anInt	player1RemainChess:=anInt.	</body>

<body package="JungleChess" selector="checkRemainChess">checkRemainChess	^checkRemainChess.</body>

<body package="JungleChess" selector="player1RemainChess">player1RemainChess	^player1RemainChess.</body>

<body package="JungleChess" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Edit the following to properly initialize instance variables ***"	board := nil.	currentPlayer := nil.	nextPlayer := nil.	width := nil.	height := nil.	" *** And replace this comment with additional initialization code *** "	^self</body>

<body package="JungleChess" selector="checkRemainChess:">checkRemainChess:aPlayer		(aPlayer name = '1')	ifTrue:[ ^player1RemainChess]	ifFalse:[^player2RemainChess].</body>

<body package="JungleChess" selector="extent">extent	^extent</body>

<body package="JungleChess" selector="isMoveValid:isMoveValid:">isMoveValid: aPointFrom isMoveValid: aPointTo	|xDistance yDistance|	xDistance:=  ((aPointFrom x )- (aPointTo x)) abs.	yDistance:=  ((aPointFrom y )- (aPointTo y)) abs.	"Den Test"	(((self at:aPointTo) class ) name asString = 'Den')ifTrue:[		((((self at:aPointTo) owner )name) = ((((self at:aPointFrom) chess)owner)name))		ifTrue:[^false.]		ifFalse:[ 			self winner: ((self at:aPointFrom) chess)owner.			^true.		].		].		"Trap test"	((((self at: aPointTo) chess)~= nil) &amp; ((self at: aPointTo) fig = 5)) ifTrue:[		((((self at: aPointTo) chess )owner)name = ((self at: aPointTo) owner)name)		ifTrue:[			^false.		]		ifFalse:[( ((xDistance = 1 &amp; yDistance = 0) | (xDistance = 0 &amp; yDistance = 1)) = true)				ifTrue:[^true.]				ifFalse:[^false.].		].	].		"Eaten test"	(((self at:aPointTo) chess ) ~= nil) ifTrue:[		((((self at:aPointTo) chess )canBeEatenBy) includes:((((self at:aPointFrom) chess ) class )name asString)) ifFalse: [			^false.		].	].		"general test"	(((self at:aPointTo) fig= 2) &amp; ((((self at:aPointFrom)chess) canSwim)~= true))	ifTrue:[ 		"River Checking"		^false.		]	ifFalse:[(((xDistance = 1 &amp; yDistance = 0) | (xDistance = 0 &amp; yDistance = 1)) ~= true)         	"Moving Distance Checking"		ifTrue:[((((self at:aPointFrom)chess) canJump)~= true)			"Jump Checking"            	ifTrue:[             	   	^false.            	]            	ifFalse:[                		"Jump over along y direction"                		((xDistance = 0) &amp;(yDistance = 4))                		ifTrue:[                			"valid position"                			(((aPointFrom y = 3) | (aPointFrom y = 7)) &amp;                			((aPointFrom x ~= 1)&amp;(aPointFrom x ~= 4) &amp;(aPointFrom x ~= 7)))                    		ifTrue:[						( (((self at:((aPointFrom x)@4))chess) =nil )&amp;(( (self at:((aPointFrom x)@5))chess) =nil )&amp;(( (self at:((aPointFrom x)@6))chess) =nil ) )						ifTrue:[^true.].					].                		].                		"Jump over along x direction"                		((yDistance = 0) &amp; (xDistance = 3))                		ifTrue:[                		"valid position"                		(((aPointFrom x = 1)|(aPointFrom x = 4) |(aPointFrom x = 7))&amp;                		((aPointFrom y = 4)|(aPointFrom y = 5) |(aPointFrom y = 6)))                    		ifTrue:[						"valid direction"						(aPointFrom x &gt; aPointTo x)						ifTrue:[ 							"Right to left"							(( ((self at:(((aPointFrom x)-1)@(aPointFrom y)))chess)= nil )&amp;( ((self at:(((aPointFrom x) -2)@(aPointFrom y)))chess)= nil ))							ifTrue:[^true].						]						ifFalse:[							"Left to right"							(( ((self at:(((aPointFrom x)+1)@(aPointFrom y)))chess)= nil )&amp;( ((self at:(((aPointFrom x) +2)@(aPointFrom y)))chess)= nil ))							ifTrue:[^true].						].					].                		].                	^false.            	].		]		ifFalse:[			"leave river checking"			( ((self at:aPointFrom) fig= 2) &amp; ((((self at:aPointTo)chess class name )asString)='Elephant')       )              		 ifTrue:[^false.].			^true.        ].	].</body>

<body package="JungleChess" selector="player2RemainChess:">player2RemainChess:anInt	player2RemainChess:=anInt.</body>

<body package="JungleChess" selector="restart">restart	    | player1 player2 aPiece |	"releast the selected chess"	(controller selected ~=nil)ifTrue:[	(self at:(controller selected)) selected: false.	controller selected: nil.	].		"reset the player"	player1 := (Player new).	player1 name: '1'.	player2 := (Player new).	player2 name: '2'.	currentPlayer:= player2.	nextPlayer:= player1. 		player1RemainChess:= 8.	player2RemainChess:= 8.	winner:= nil.    "reset all chess"    1 to: height do: [:y |        1 to: width do:[:x |            (self at: x@y) chess: nil.        ].    ].        aPiece := Lion new.    aPiece owner: player1.	(((board at: 1) at: 1)) chess: aPiece.    aPiece := Tiger new.    aPiece owner: player1.	(((board at: 1) at: 7)) chess: aPiece.    aPiece := Dog new.    aPiece owner: player1.	(((board at: 2) at: 2)) chess: aPiece.    aPiece := Cat new.    aPiece owner: player1.	(((board at: 2) at: 6)) chess: aPiece.    aPiece := Rat new.    aPiece owner: player1.	(((board at: 3) at: 1)) chess: aPiece.    aPiece := Jaguar new.    aPiece owner: player1.	(((board at: 3) at: 3)) chess: aPiece.    aPiece := Wolf new.    aPiece owner: player1.	(((board at: 3) at: 5)) chess: aPiece.    aPiece := Elephant new.    aPiece owner: player1.	(((board at: 3) at: 7)) chess: aPiece.    aPiece := Elephant new.    aPiece owner: player2.	(((board at: 7) at: 1)) chess: aPiece.    aPiece := Wolf new.    aPiece owner: player2.	(((board at: 7) at: 3)) chess: aPiece.    aPiece := Jaguar new.    aPiece owner: player2.	(((board at: 7) at: 5)) chess: aPiece.    aPiece := Rat new.    aPiece owner: player2.	(((board at: 7) at: 7)) chess: aPiece.    aPiece := Cat new.    aPiece owner: player2.	(((board at: 8) at: 2)) chess: aPiece.    aPiece := Dog new.    aPiece owner: player2.	(((board at: 8) at: 6)) chess: aPiece.    aPiece := Tiger new.    aPiece owner: player2.	(((board at: 9) at: 1)) chess: aPiece.    aPiece := Lion new.    aPiece owner: player2.	(((board at: 9) at: 7)) chess: aPiece.        ^self changed.</body>

<body package="JungleChess" selector="makeMove:makeMove:">makeMove: aPointFrom makeMove: aPointTo	(self at:aPointTo) chess:(self at:aPointFrom) chess.	(self at:aPointFrom) chess: nil.	(self at:aPointTo) changed.	(self at:aPointFrom) changed.</body>

<body package="JungleChess" selector="winner">winner	^winner.</body>
</methods>


<methods>
<class-id>ChessPiece class</class-id> <category>instance creation</category>

<body package="JungleChess" selector="new">new	"Answer a newly created and initialized instance."	^super new initialize</body>
</methods>


<methods>
<class-id>ChessPiece</class-id> <category>initialize-release</category>

<body package="JungleChess" selector="canSwim:">canSwim:aBool</body>

<body package="JungleChess" selector="canOccupy">canOccupy</body>

<body package="JungleChess" selector="canJump">canJump</body>

<body package="JungleChess" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Edit the following to properly initialize instance variables ***"	owner := nil.	square :=nil.	canBeEatenBy := nil.	" *** And replace this comment with additional initialization code *** "	^self</body>

<body package="JungleChess" selector="canOccupy:">canOccupy:aBool	|aSquare|	aSquare := [:Square].</body>

<body package="JungleChess" selector="addEater">addEater	| aChess |	aChess := [ :ChessPiece ].</body>

<body package="JungleChess" selector="canJump:">canJump:aBool</body>

<body package="JungleChess" selector="moveTo">moveTo	| aSquare |	aSquare := [ :Square ].</body>

<body package="JungleChess" selector="canSwim">canSwim</body>
</methods>

<methods>
<class-id>ChessPiece</class-id> <category>accessing</category>

<body package="JungleChess" selector="owner">owner	^owner</body>

<body package="JungleChess" selector="canBeEatenBy:">canBeEatenBy: aChessPiece	canBeEatenBy := aChessPiece.</body>

<body package="JungleChess" selector="square">square	^square</body>

<body package="JungleChess" selector="owner:">owner: aPlayer	owner := aPlayer.</body>

<body package="JungleChess" selector="fig:">fig: anObject	fig := anObject</body>

<body package="JungleChess" selector="canBeEatenBy">canBeEatenBy	^canBeEatenBy</body>

<body package="JungleChess" selector="fig">fig	^fig</body>

<body package="JungleChess" selector="square:">square: aSquare	square := aSquare.</body>
</methods>


<methods>
<class-id>Dog</class-id> <category>initialize-release</category>

<body package="JungleChess" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Replace this comment with the appropriate initialization code *** "	canBeEatenBy := Dictionary new.	canBeEatenBy			at: 1 put: 'Elephant';			at: 2 put: 'Lion';			at: 3 put: 'Tiger';			at: 4 put: 'Jaguar';				at: 5 put: 'Wolf';			at: 6 put: 'Dog'.	^self</body>
</methods>

<methods>
<class-id>Dog</class-id> <category>accessing</category>

<body package="JungleChess" selector="owner:">owner: aPlayer			owner := aPlayer.		(owner name = '1') ifTrue: [					fig := 5.		]		ifFalse:[			fig :=6.		]</body>
</methods>


<methods>
<class-id>Rat</class-id> <category>initialize-release</category>

<body package="JungleChess" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Replace this comment with the appropriate initialization code *** "	canBeEatenBy := Dictionary new.	canBeEatenBy			at: 1 put: 'Rat';			at: 2 put: 'Lion';			at: 3 put: 'Tiger';			at: 4 put: 'Jaguar';				at: 5 put: 'Wolf';			at: 6 put: 'Dog';			at: 7 put: 'Cat'.	^self</body>

<body package="JungleChess" selector="canSwim">canSwim	^true.</body>
</methods>

<methods>
<class-id>Rat</class-id> <category>accessing</category>

<body package="JungleChess" selector="owner:">owner: aPlayer			owner := aPlayer.		(owner name = '1') ifTrue: [					fig := 1.		]		ifFalse:[			fig := 2.		]</body>
</methods>


<methods>
<class-id>Elephant</class-id> <category>initialize-release</category>

<body package="JungleChess" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Replace this comment with the appropriate initialization code *** "	canBeEatenBy := Dictionary new.	canBeEatenBy			at: 1 put: 'Elephant';			at: 2 put: 'Rat'.	^self</body>
</methods>

<methods>
<class-id>Elephant</class-id> <category>accessing</category>

<body package="JungleChess" selector="owner:">owner: aPlayer			owner := aPlayer.		(owner name = '1') ifTrue: [					fig := 15.		]		ifFalse:[			fig := 16.		]</body>
</methods>


<methods>
<class-id>Player class</class-id> <category>instance creation</category>

<body package="JungleChess" selector="new">new	"Answer a newly created and initialized instance."	^super new initialize</body>
</methods>


<methods>
<class-id>Player</class-id> <category>initialize-release</category>

<body package="JungleChess" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Edit the following to properly initialize instance variables ***"	" *** And replace this comment with additional initialization code *** "	^self</body>
</methods>

<methods>
<class-id>Player</class-id> <category>accessing</category>

<body package="JungleChess" selector="name">name	^name</body>

<body package="JungleChess" selector="name:">name: aStr	name := aStr asLowercase.</body>
</methods>


<methods>
<class-id>Square class</class-id> <category>instance creation</category>

<body package="JungleChess" selector="new">new	"Answer a newly created and initialized instance."	^super new initialize</body>
</methods>


<methods>
<class-id>Square</class-id> <category>accessing</category>

<body package="JungleChess" selector="selected:">selected:aBool	selected := aBool.</body>

<body package="JungleChess" selector="coordinate">coordinate	^coordinate	 	</body>

<body package="JungleChess" selector="selected">selected	^selected.</body>

<body package="JungleChess" selector="fig:">fig: anInt	fig := anInt.</body>

<body package="JungleChess" selector="fig">fig	^fig</body>

<body package="JungleChess" selector="chess:">chess: anObject	chess := anObject</body>

<body package="JungleChess" selector="coordinate:">coordinate: aPoint		coordinate := aPoint.</body>

<body package="JungleChess" selector="chess">chess	^chess</body>
</methods>

<methods>
<class-id>Square</class-id> <category>initialize-release</category>

<body package="JungleChess" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Edit the following to properly initialize instance variables ***"	selected:= false.	chess := nil.	corrdinate := nil.	fig :=  1.	" *** And replace this comment with additional initialization code *** "	^self</body>
</methods>


<methods>
<class-id>Jaguar</class-id> <category>initialize-release</category>

<body package="JungleChess" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Replace this comment with the appropriate initialization code *** "	canBeEatenBy := Dictionary new.	canBeEatenBy			at: 1 put: 'Elephant';			at: 2 put: 'Lion';			at: 3 put: 'Tiger';			at: 4 put: 'Jaguar'.			^self</body>
</methods>

<methods>
<class-id>Jaguar</class-id> <category>accessing</category>

<body package="JungleChess" selector="owner:">owner: aPlayer			owner := aPlayer.		(owner name = '1') ifTrue: [					fig := 9.		]		ifFalse:[			fig :=10.		]</body>
</methods>


<methods>
<class-id>JungleGameView</class-id> <category>accessing</category>

<body package="JungleChess" selector="model:">model: aJungleGame	super model: aJungleGame.	1 to: model height do: [:y |         1 to: model width do: [:x |             | view wrapper offset size |            view := SquareView model: (aJungleGame at: x @ y).            offset := (x - 1 / model width) @ (y - 1 / model height).            size := (1 / model width) @ (1 / model height).            wrapper := BoundedWrapper on: view in: (offset extent: size).            self addWrapper: wrapper        ]    ]</body>
</methods>

<methods>
<class-id>JungleGameView</class-id> <category>controller accessing</category>

<body package="JungleChess" selector="defaultControllerClass">defaultControllerClass	^JungleGameController.</body>
</methods>

<methods>
<class-id>JungleGameView</class-id> <category>initialize-release</category>

<body package="JungleChess" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Replace this comment with the appropriate initialization code *** "	^self</body>
</methods>


<methods>
<class-id>Wolf</class-id> <category>initialize-release</category>

<body package="JungleChess" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Replace this comment with the appropriate initialization code *** "	canBeEatenBy := Dictionary new.	canBeEatenBy			at: 1 put: 'Elephant';			at: 2 put: 'Lion';			at: 3 put: 'Tiger';			at: 4 put: 'Jaguar';				at: 5 put: 'Wolf'. 	^self</body>
</methods>

<methods>
<class-id>Wolf</class-id> <category>accessing</category>

<body package="JungleChess" selector="owner:">owner: aPlayer			owner := aPlayer.		(owner name = '1') ifTrue: [					fig := 7.		]		ifFalse:[			fig :=8.		]</body>
</methods>


<methods>
<class-id>JungleChessBoard class</class-id> <category>interface specs</category>

<body package="JungleChess" selector="windowSpec">windowSpec	"Tools.UIPainter new openOnClass: self andSelector: #windowSpec"	&lt;resource: #canvas&gt;	^#(#{UI.FullSpec} 		#window: 		#(#{UI.WindowSpec} 			#label: 'Unlabeled Canvas' 			#min: #(#{Core.Point} 420 570 ) 			#max: #(#{Core.Point} 420 570 ) 			#bounds: #(#{Graphics.Rectangle} 430 212 850 782 ) ) 		#component: 		#(#{UI.SpecCollection} 			#collection: #(				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.Rectangle} 0 0 80 30 ) 					#name: #ActionButton1 					#model: #restart 					#label: 'New Game' 					#defaultable: true ) 				#(#{UI.InputFieldSpec} 					#layout: #(#{Graphics.Rectangle} 81 1 419 29 ) 					#name: #InputField1 					#model: #message 					#type: #string ) 				#(#{UI.ArbitraryComponentSpec} 					#layout: #(#{Graphics.Rectangle} 0 30 420 570 ) 					#name: #ViewHolder1 					#component: #jungleGameView ) ) ) )</body>
</methods>


<methods>
<class-id>JungleChessBoard</class-id> <category>actions</category>

<body package="JungleChess" selector="restart">restart	"This stub method was generated by UIDefiner"	jungleGame restart.	self message value: 'NEW GAME'.	^self</body>

<body package="JungleChess" selector="jungleGameView">jungleGameView	jungleGame := JungleGame extent: 7@9.	jungleGame jungleChessBoard: self.	jungleGameView := JungleGameView model: jungleGame.	jungleGame controller: (jungleGameView controller).	^jungleGameView</body>
</methods>

<methods>
<class-id>JungleChessBoard</class-id> <category>aspects</category>

<body package="JungleChess" selector="message">message	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^message isNil		ifTrue:			[message := String new asValue]		ifFalse:			[message]</body>
</methods>


<methods>
<class-id>Cat</class-id> <category>initialize-release</category>

<body package="JungleChess" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Replace this comment with the appropriate initialization code *** "	canBeEatenBy := Dictionary new.	canBeEatenBy			at: 1 put: 'Elephant';			at: 2 put: 'Lion';			at: 3 put: 'Tiger';			at: 4 put: 'Jaguar';				at: 5 put: 'Wolf';			at: 6 put: 'Dog';			at: 7 put: 'Cat'.	^self</body>
</methods>

<methods>
<class-id>Cat</class-id> <category>accessing</category>

<body package="JungleChess" selector="owner:">owner: aPlayer			owner := aPlayer.		(owner name = '1') ifTrue: [					fig := 3.		]		ifFalse:[			fig :=4.		]</body>
</methods>


<methods>
<class-id>SquareView class</class-id> <category>instance creation</category>

<body package="JungleChess" selector="model:">model: aSquare	^super new model: aSquare.</body>
</methods>


<methods>
<class-id>SquareView</class-id> <category>accessing</category>

<body package="JungleChess" selector="selected:">selected: aBool		selected := aBool.	Transcript cr; show:'selected! =' .	Transcript self printString.</body>

<body package="JungleChess" selector="selected">selected		^self.</body>

<body package="JungleChess" selector="model:">model: aSquare	super model: aSquare.	squareImage:= Array new: 5.	squareImage		at: 1 put: (ImageReader fromFile: 'Figures\ground.png') image;		at: 2 put: (ImageReader fromFile: 'Figures\river.png') image; 		at: 3 put: (ImageReader fromFile: 'Figures\den1.png') image;		at: 4 put: (ImageReader fromFile: 'Figures\den2.png') image;		at: 5 put: (ImageReader fromFile: 'Figures\trap.png') image.	chessImage:= Array new: 16.	chessImage		at: 1 put: (ImageReader fromFile: 'Figures\rat1.png') image;		at: 2 put: (ImageReader fromFile: 'Figures\rat2.png') image;		at: 3 put: (ImageReader fromFile: 'Figures\cat1.png') image;		at: 4 put: (ImageReader fromFile: 'Figures\cat2.png') image;		at: 5 put: (ImageReader fromFile: 'Figures\dog1.png') image;		at: 6 put: (ImageReader fromFile: 'Figures\dog2.png') image;		at: 7 put: (ImageReader fromFile: 'Figures\wolf1.png') image;		at: 8 put: (ImageReader fromFile: 'Figures\wolf2.png') image;		at: 9 put: (ImageReader fromFile: 'Figures\jaguar1.png') image;		at: 10 put: (ImageReader fromFile: 'Figures\jaguar2.png') image;		at: 11 put: (ImageReader fromFile: 'Figures\tiger1.png') image;		at: 12 put: (ImageReader fromFile: 'Figures\tiger2.png') image;		at: 13 put: (ImageReader fromFile: 'Figures\lion1.png') image;		at: 14 put: (ImageReader fromFile: 'Figures\lion2.png') image;		at: 15 put: (ImageReader fromFile: 'Figures\elephant1.png') image;		at: 16 put: (ImageReader fromFile: 'Figures\elephant2.png') image.	^self</body>
</methods>

<methods>
<class-id>SquareView</class-id> <category>controller accessing</category>

<body package="JungleChess" selector="defaultControllerClass">defaultControllerClass	^SquareController.</body>
</methods>

<methods>
<class-id>SquareView</class-id> <category>displaying</category>

<body package="JungleChess" selector="displayOn:">displayOn: aGraphicsContext| applicationImage alphaImage displayBlock |applicationImage := Image extent: 60@60 depth: 24 palette: FixedPalette rgb8Bit.(model chess ~= nil) ifTrue: [                      "If any chess on the square"	(model selected ~= true) ifTrue:[    		"Display squareImage"    		alphaImage := (squareImage at: model fig).    		displayBlock := [:postion | alphaImage pixelsDo: [:x :y |      	applicationImage atPoint: x@y + postion put:        	(applicationImage palette indexOfPaintNearest: ((applicationImage valueAtPoint: x@y + postion)           	blendWith: (alphaImage valueAtPoint: x@y)      	 weight: ((((alphaImage atPoint: x@y) bitShift: -24) / 255)))) ]].	    displayBlock value: 0@0.    		"Display chesImage"    		alphaImage := (chessImage at: model chess fig).     		displayBlock := [:postion | alphaImage pixelsDo: [:x :y |      	applicationImage atPoint: x@y + postion put:        	(applicationImage palette indexOfPaintNearest: ((applicationImage valueAtPoint: x@y + postion)           	blendWith: (alphaImage valueAtPoint: x@y)          	weight: ((((alphaImage atPoint: x@y) bitShift: -24) / 255)))) ]].    		displayBlock value: 0@0.    		applicationImage displayOn: aGraphicsContext.]	ifFalse:[ 		"Display squareImage"    		alphaImage := (squareImage at: model fig).    		displayBlock := [:postion | alphaImage pixelsDo: [:x :y |      	applicationImage atPoint: x@y + postion put:        	(applicationImage palette indexOfPaintNearest: ((applicationImage valueAtPoint: x@y + postion)           	blendWith: (alphaImage valueAtPoint: x@y)         	 weight: ((((alphaImage atPoint: x@y) bitShift: -24) / 255)))) ]].    		displayBlock value: 0@0.	    "Display chesImage"    		alphaImage := (chessImage at: model chess fig).     		displayBlock := [:postion | alphaImage pixelsDo: [:x :y |      	applicationImage atPoint: x@y + postion put:        	(applicationImage palette indexOfPaintNearest: ((applicationImage valueAtPoint: x@y + postion)           	blendWith: (alphaImage valueAtPoint: x@y)         	 weight: ((((alphaImage atPoint: x@y) bitShift: -24) / 255)/2))) ]].    		displayBlock value: 0@0.    		applicationImage displayOn: aGraphicsContext.		] ]ifFalse: [                                    "If no chess on the square"    (squareImage at: model fig) displayOn: aGraphicsContext.].</body>
</methods>

<methods>
<class-id>SquareView</class-id> <category>initialize-release</category>

<body package="JungleChess" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Replace this comment with the appropriate initialization code *** "	^self</body>
</methods>


<methods>
<class-id>River</class-id> <category>initialize-release</category>

<body package="JungleChess" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Replace this comment with the appropriate initialization code *** "	fig := 2.	^self</body>
</methods>


<methods>
<class-id>JungleGameController</class-id> <category>initialize-release</category>

<body package="JungleChess" selector="clickAt:">clickAt: aPoint	(model currentPlayer name = '1')		ifTrue:[model jungleChessBoard message value:'It is Player Red turn' .]		ifFalse:[model jungleChessBoard message value:'It is Player Blue turn' .].	(self selected = nil)ifTrue:[ 	"have not selected yet ---- selectPiece"        ((model  at: aPoint) chess ~= nil) ifTrue:[            "check if this piece is owned by currentPlayer"            ((((model at: aPoint) chess) owner) = (model currentPlayer))ifTrue:[                    self selectPiece: aPoint.                    self selected: aPoint.            ]		ifFalse:[model jungleChessBoard message value:'This is not your chess!'.].		].	]	ifFalse:[	"selected and selected same point ---- unselected"		(self selected = aPoint)ifTrue:[			self unselected: aPoint.			self selected: nil.		]		ifFalse:[	            ((model at: aPoint) chess ~= nil)ifTrue:[                "selected and selected another one with same owner  ---- reselect"                (((model at: aPoint) chess) owner = ((model at: (self selected)) chess) owner)ifTrue:[                    self reselect: aPoint.                    self selected: aPoint.                ]                 ifFalse:[                    "selected and selected a opponent's chess ---- movePiece"                    (model isMoveValid: (self selected) isMoveValid: (aPoint)) ifTrue:[                            | tempPlayer |                    		self movePiece:aPoint.                    		self selected: nil.					(model currentPlayer name= '1')					ifTrue:[model player1RemainChess:((model checkRemainChess:(model currentPlayer)) - 1). ]					ifFalse:[model player2RemainChess:((model checkRemainChess:(model currentPlayer)) - 1)].                            tempPlayer := (model currentPlayer).                            model currentPlayer: (model nextPlayer).                             model nextPlayer: tempPlayer.					(model currentPlayer name = '1')					ifTrue:[model jungleChessBoard message value:'It is Player Red turn' .]					ifFalse:[model jungleChessBoard message value:'It is Player Blue turn' .].                    ]                    ifFalse:[ model jungleChessBoard message value:'Your chess cannot go here!'.].                ].            ]            ifFalse:[			"selected and select a nil point ---- movePiece"                (model isMoveValid: (self selected) isMoveValid: (aPoint)) ifTrue:[                    | tempPlayer |                    self movePiece:aPoint.                    self selected: nil.                    tempPlayer := (model currentPlayer).                    model currentPlayer: (model nextPlayer).                     model nextPlayer: tempPlayer.			(model currentPlayer name = '1')				ifTrue:[model jungleChessBoard message value:'It is Player Red turn' .]				ifFalse:[model jungleChessBoard message value:'It is Player Blue turn' .].                ]                ifFalse:[model jungleChessBoard message value:'Your chess cannot go here!'.].            ].		].	].		"No Chess Checking"	((model checkRemainChess:(model nextPlayer ))= 0)	ifTrue:[		model winner: (model nextPlayer) .	].	(model winner~=nil)ifTrue:[		(model winner name = '1')			ifTrue:[model jungleChessBoard message value:'Winner is Player Red!'.]			ifFalse:[model jungleChessBoard message value:'Winner is Player Blue!'.]	].</body>

<body package="JungleChess" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Replace this comment with the appropriate initialization code *** "	selected := nil.	^self</body>

<body package="JungleChess" selector="selectPiece:">selectPiece:aPoint		Transcript cr; show: 'selectePiece'.				(model  at: aPoint) selected: true.		(model  at: aPoint) changed.</body>

<body package="JungleChess" selector="unselected:">unselected:aPoint		Transcript cr; show: 'unselected'.		(model  at: aPoint) selected: False.		(model  at: aPoint) changed.</body>

<body package="JungleChess" selector="selected:">selected:aPoint		selected:= aPoint. </body>

<body package="JungleChess" selector="movePiece:">movePiece: aPoint	model makeMove:(self selected) makeMove:(aPoint).	(model  at: (self selected))selected: false.	(model  at: (self selected)) changed.	(model  at: aPoint) changed.</body>

<body package="JungleChess" selector="selected">selected	^selected.</body>

<body package="JungleChess" selector="reselect:">reselect: aPoint		Transcript cr; show: 'reselect'.		"unselected the last chess"		(model  at: (self selected)) selected: false.		(model  at: (self selected)) changed.		"pick a new one"		(model at: aPoint) selected: true.		(model  at: aPoint) changed.</body>
</methods>


<methods>
<class-id>Ground</class-id> <category>initialize-release</category>

<body package="JungleChess" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Replace this comment with the appropriate initialization code *** "	fig := 1.	^self</body>
</methods>


<methods>
<class-id>PrivateSquare</class-id> <category>initialize-release</category>

<body package="JungleChess" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Edit the following to properly initialize instance variables ***"	owner := nil.	" *** And replace this comment with additional initialization code *** "	^self</body>
</methods>

<methods>
<class-id>PrivateSquare</class-id> <category>accessing</category>

<body package="JungleChess" selector="owner:">owner: aPlayer	owner := aPlayer.</body>

<body package="JungleChess" selector="owner">owner	^owner</body>
</methods>


<methods>
<class-id>Den</class-id> <category>initialize-release</category>

<body package="JungleChess" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Replace this comment with the appropriate initialization code *** "	^self</body>
</methods>

<methods>
<class-id>Den</class-id> <category>accessing</category>

<body package="JungleChess" selector="owner:">owner: aPlayer			owner := aPlayer.		(owner name = '1') ifTrue: [					fig := 3.		]		ifFalse:[			fig :=4.		]</body>
</methods>


<methods>
<class-id>Tiger</class-id> <category>initialize-release</category>

<body package="JungleChess" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Replace this comment with the appropriate initialization code *** "	canBeEatenBy := Dictionary new.	canBeEatenBy			at: 1 put: 'Elephant';			at: 2 put: 'Lion';			at: 3 put: 'Tiger'.			^self</body>

<body package="JungleChess" selector="canJump">canJump	^true.</body>
</methods>

<methods>
<class-id>Tiger</class-id> <category>accessing</category>

<body package="JungleChess" selector="owner:">owner: aPlayer			owner := aPlayer.		(owner name = '1') ifTrue: [					fig := 11.		]		ifFalse:[			fig := 12.		]</body>
</methods>


<methods>
<class-id>Trap</class-id> <category>initialize-release</category>

<body package="JungleChess" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Replace this comment with the appropriate initialization code *** "	fig := 5.	^self</body>
</methods>


<methods>
<class-id>SquareController</class-id> <category>initialize-release</category>

<body package="JungleChess" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Replace this comment with the appropriate initialization code *** "	^self</body>
</methods>

<methods>
<class-id>SquareController</class-id> <category>events</category>

<body package="JungleChess" selector="redButtonPressedEvent:">redButtonPressedEvent: event    | wrapper jungleGameView jungleGameController |    wrapper := self view container.    jungleGameView := wrapper container.    jungleGameController := jungleGameView controller.	(jungleGameView model winner = nil	)	ifTrue:[    jungleGameController clickAt: self model coordinate.]</body>
</methods>


<methods>
<class-id>Lion</class-id> <category>initialize-release</category>

<body package="JungleChess" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Replace this comment with the appropriate initialization code *** "	canBeEatenBy := Dictionary new.	canBeEatenBy					at: 1 put: 'Lion';					at: 2 put: 'Elephant'.	^self</body>

<body package="JungleChess" selector="canJump">canJump	^true.</body>
</methods>

<methods>
<class-id>Lion</class-id> <category>accessing</category>

<body package="JungleChess" selector="owner:">owner: aPlayer			owner := aPlayer.		(owner name = '1') ifTrue: [					fig := 13.		]		ifFalse:[			fig :=14.		]</body>
</methods>



</st-source>
